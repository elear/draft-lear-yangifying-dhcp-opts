---
title: "DHCP Options in YANG"
abbrev: "DHCP Options in YANG"
category: std

docname: draft-lear-yangifying-dhcp-opts-latest
submissiontype: IETF  # also: "independent", "editorial", "IAB", or "IRTF"
number:
date:
consensus: true
v: 3
# area: int
# workgroup: dhc
keyword:
 - dhcp
 - yang
venue:
#  group: WG
#  type: Working Group
#  mail: WG@example.com
#  arch: https://example.com/WG
  github: "elear/draft-lear-yangifying-dhcp-opts"
  latest: "https://elear.github.io/draft-lear-yangifying-dhcp-opts/draft-lear-yangifying-dhcp-opts.html"

author:
 -
    fullname: "Eliot Lear"
    organization: Your Organization Here
    email: "lear@lear.ch"

normative:

informative:

...

--- abstract

This memo specifies the process for creating YANG versions of DHCP server options.  By providing the appropriate data model, automation of both YANG-based management systems and DHCP systems can be improved.


--- middle

# Introduction {#intro}

DHCP options contain whole lot of Cool Stuff that clients might like to know about their current environment.  The hint is in the name as to how this information has been transported: DHCP.  But those options can be used in other ways, either to configure clients through other substrates or even as part of a broader management framework to configure DHCP servers themselves.

For example, if the inforamtion is properly structured it could be included at the EAP layer as part of TEAP /* Reference here */

{{!RFC9243}} has specified YANG schema definitions for DHCP as well as an extension approach.  This memo follows that model and remains focused on DHCPv6.

DHCP has been around a very long time, since the 1990s, and its predecessor BOOTP may have co-existed with dinosaurs.  The implication of this is that options specifications were strictly narrative alongside a packet diagram.  The specification of the option contents themselves was not governed by a former data model.  This draft changes how new options get defined so that YANG is now used to defined the option contents.  For this reason it updates /* reference here */.

Finally, we provide an initial registry of server options that have already been defined.  For the sake of sanity, we have not attempted to go beyond simple typing found in /* reference here */.

## Conventions and Definitions

{::boilerplate bcp14-tagged}


# Security Considerations {#security}

TODO Security


# IANA Considerations {#iana}

TODO IANA considerations.


--- back

# Acknowledgments
{:numbered="false"}

TODO acknowledge.
