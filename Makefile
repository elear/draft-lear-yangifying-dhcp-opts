LIBDIR := lib
-include $(LIBDIR)/main.mk

$(LIBDIR)/main.mk:
ifneq (,$(shell grep "path *= *$(LIBDIR)" .gitmodules 2>/dev/null))
	git submodule sync
	git submodule update --init
else
ifneq (,$(wildcard $(ID_TEMPLATE_HOME)))
	ln -s "$(ID_TEMPLATE_HOME)" $(LIBDIR)
else
	git clone -q --depth 10 -b main \
	    https://github.com/martinthomson/i-d-template $(LIBDIR)
endif

yang-files := $(wildcard *.yang)
yang-file-markers := (patsubst(yang-files))
.PHONY: pyang-lint
pyang-lint: $(pyang-lint-files)
.%.yang-lint: %.yang $(DEPS_FILES)
	pyang-lint	<	|tee@	
lint:: pyang-lint

endif
