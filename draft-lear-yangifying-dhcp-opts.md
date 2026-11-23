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
 -
    fullname: "Ian Farrer"
    organization: Deutsche Telekom AG
    email: "ianfarrer@telekom.de"

normative:

informative:

...

--- abstract

This memo specifies the process for creating YANG versions of DHCP server options.  By providing the appropriate data model, automation of both YANG-based management systems and DHCP systems can be improved.

--- middle

# Introduction {#intro}

DHCP options contain whole lot of Cool Stuff that clients might like to know about their current environment.  The hint is in the name as to how this information has been transported: DHCP.  But those options can be used in other ways, either to configure clients through other substrates or even as part of a broader management framework to configure DHCP servers themselves.

For example, if the inforamtion is properly structured it could be included at the EAP layer as part of TEAP /* Reference here */

{{!RFC9243}} defines the base YANG models for DHCPv6 servers, relays and clients, and includes YANG schema definitions for configuring the DHCPv6 options that are defined in {{!RFC9915}}. {{!RFC9243}}, Appendix B describes rules and a general approach for extending the base YANG models with configuration nodes for additional DHCPv6 options. This memo follows these rule and approach, and remains focused on DHCPv6.

DHCP has been around a very long time, since the 1990s, and its predecessor BOOTP may have co-existed with dinosaurs.  The implication of this is that options specifications were strictly narrative alongside a packet diagram.  The specification of the option contents themselves was not governed by a former data model.  This draft changes how new options get defined so that YANG is now used to defined the option contents.  For this reason it updates /* reference here */.

Finally, we provide an initial registry of server options that have already been defined.  For the sake of sanity, we have not attempted to go beyond simple typing found in /* reference here */.

i# DHCPv6 Option Models

## RFC 3319: DHCPv6 options model `ietf-dhcpv6-opt-sip`

This model covers the DHCPv6 options specified in {{!RFC3319}}: Dynamic Host Configuration Protocol (DHCPv6) Options for Session Initiation Protocol (SIP) Servers.

| IANA option code | IANA option name |
| :--: | --- |
| 21 | `OPTION_SIP_SERVER_D` |
| 22 | `OPTION_SIP_SERVER_A` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-sip.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-sip.yang"
{::include ./yang/ietf-dhcpv6-opt-sip.yang}
<CODE ENDS>
~~~~

## RFC 3646: DHCPv6 options model `ietf-dhcpv6-opt-dns`

This model covers the DHCPv6 options specified in {{!RFC3646}}: DNS Configuration options for DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 23 | `OPTION_DNS_SERVERS` |
| 24 | `OPTION_DOMAIN_LIST` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-dns.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-dns.yang"
{::include ./yang/ietf-dhcpv6-opt-dns.yang}
<CODE ENDS>
~~~~

## RFC 3898: DHCPv6 options model `ietf-dhcpv6-opt-nis`

This model covers the DHCPv6 options specified in {{!RFC3898}}: Network Information Service (NIS) Configuration Options for DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 27 | `OPTION_NIS_SERVERS` |
| 28 | `OPTION_NISP_SERVERS` |
| 29 | `OPTION_NIS_DOMAIN_NAME` |
| 30 | `OPTION_NISP_DOMAIN_NAME` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-nis.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-nis.yang"
{::include ./yang/ietf-dhcpv6-opt-nis.yang}
<CODE ENDS>
~~~~

## RFC 4075: DHCPv6 options model `ietf-dhcpv6-opt-sntp`

This model covers the DHCPv6 options specified in {{!RFC4075}}: Simple Network Time Protocol (SNTP) Configuration Option for DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 31 | `OPTION_SNTP_SERVERS` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-sntp.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-sntp.yang"
{::include ./yang/ietf-dhcpv6-opt-sntp.yang}
<CODE ENDS>
~~~~

## RFC 4280: DHCPv6 options model `ietf-dhcpv6-opt-bcmcs`

This model covers the DHCPv6 options specified in {{!RFC4280}}: Dynamic Host Configuration Protocol (DHCPv6) Options for Broadcast and Multicast Control Servers.

| IANA option code | IANA option name |
| :--: | --- |
| 33 | `OPTION_BCMCS_SERVER_D` |
| 34 | `OPTION_BCMCS_SERVER_A` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-bcmcs.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-bcmcs.yang"
{::include ./yang/ietf-dhcpv6-opt-bcmcs.yang}
<CODE ENDS>
~~~~

## RFC 4580: DHCPv6 options model `ietf-dhcpv6-opt-subscriber-id`

This model covers the DHCPv6 options specified in {{!RFC4580}}: DHCPv6 Relay Agent Subscriber-ID Option.

| IANA option code | IANA option name |
| :--: | --- |
| 38 | `OPTION_SUBSCRIBER_ID` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-subscriber-id.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-subscriber-id.yang"
{::include ./yang/ietf-dhcpv6-opt-subscriber-id.yang}
<CODE ENDS>
~~~~

## RFC 4649: DHCPv6 options model `ietf-dhcpv6-opt-remote-id`

This model covers the DHCPv6 options specified in {{!RFC4649}}: DHCPv6 Relay Agent Remote-ID Option.

| IANA option code | IANA option name |
| :--: | --- |
| 37 | `OPTION_REMOTE_ID` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-remote-id.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-remote-id.yang"
{::include ./yang/ietf-dhcpv6-opt-remote-id.yang}
<CODE ENDS>
~~~~

## RFC 4704: DHCPv6 options model `ietf-dhcpv6-opt-client-fqdn`

This model covers the DHCPv6 options specified in {{!RFC4704}}: The DHCP Client Fully Qualified Domain Name (FQDN) Option.

| IANA option code | IANA option name |
| :--: | --- |
| 39 | `OPTION_CLIENT_FQDN` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-client-fqdn.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-client-fqdn.yang"
{::include ./yang/ietf-dhcpv6-opt-client-fqdn.yang}
<CODE ENDS>
~~~~

## RFC 4776: DHCPv6 options model `ietf-dhcpv6-opt-civic`

This model covers the DHCPv6 options specified in {{!RFC4776}}: Dynamic Host Configuration Protocol (DHCPv4 and DHCPv6) Option for Civic Addresses Configuration Information.

| IANA option code | IANA option name |
| :--: | --- |
| 36 | `OPTION_GEOCONF_CIVIC` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-civic.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-civic.yang"
{::include ./yang/ietf-dhcpv6-opt-civic.yang}
<CODE ENDS>
~~~~

## RFC 4833: DHCPv6 options model `ietf-dhcpv6-opt-timezone`

This model covers the DHCPv6 options specified in {{!RFC4833}}: Timezone Options for DHCP.

| IANA option code | IANA option name |
| :--: | --- |
| 41 | `OPTION_NEW_POSIX_TIMEZONE` |
| 42 | `OPTION_NEW_TZDB_TIMEZONE` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-timezone.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-timezone.yang"
{::include ./yang/ietf-dhcpv6-opt-timezone.yang}
<CODE ENDS>
~~~~

## RFC 4994: DHCPv6 options model `ietf-dhcpv6-opt-echo-request`

This model covers the DHCPv6 options specified in {{!RFC4994}}: DHCPv6 Relay Agent Echo Request Option.

| IANA option code | IANA option name |
| :--: | --- |
| 43 | `OPTION_ERO` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-echo-request.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-echo-request.yang"
{::include ./yang/ietf-dhcpv6-opt-echo-request.yang}
<CODE ENDS>
~~~~

## RFC 5007: DHCPv6 options model `ietf-dhcpv6-opt-leasequery`

This model covers the DHCPv6 options specified in {{!RFC5007}}: DHCPv6 Leasequery.

| IANA option code | IANA option name |
| :--: | --- |
| 44 | `OPTION_LQ_QUERY` |
| 45 | `OPTION_CLIENT_DATA` |
| 46 | `OPTION_CLT_TIME` |
| 47 | `OPTION_LQ_RELAY_DATA` |
| 48 | `OPTION_LQ_CLIENT_LINK` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-leasequery.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-leasequery.yang"
{::include ./yang/ietf-dhcpv6-opt-leasequery.yang}
<CODE ENDS>
~~~~

## RFC 5192: DHCPv6 options model `ietf-dhcpv6-opt-pana-agent`

This model covers the DHCPv6 options specified in {{!RFC5192}}: DHCP Options for the Protocol for carrying Authentication for Network Access (PANA).

| IANA option code | IANA option name |
| :--: | --- |
| 40 | `OPTION_PANA_AGENT` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-pana-agent.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-pana-agent.yang"
{::include ./yang/ietf-dhcpv6-opt-pana-agent.yang}
<CODE ENDS>
~~~~

## RFC 5223: DHCPv6 options model `ietf-dhcpv6-opt-lost`

This model covers the DHCPv6 options specified in {{!RFC5223}}: A DHCPv6-based Location-to-Service Translation Protocol (LoST) Discovery.

| IANA option code | IANA option name |
| :--: | --- |
| 51 | `OPTION_V6_LOST` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-lost.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-lost.yang"
{::include ./yang/ietf-dhcpv6-opt-lost.yang}
<CODE ENDS>
~~~~

## RFC 5417: DHCPv6 options model `ietf-dhcpv6-opt-capwap`

This model covers the DHCPv6 options specified in {{!RFC5417}}: Control And Provisioning of Wireless Access Points (CAPWAP) Access Controller DHCP Option.

| IANA option code | IANA option name |
| :--: | --- |
| 52 | `OPTION_CAPWAP_AC_V6` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-capwap.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-capwap.yang"
{::include ./yang/ietf-dhcpv6-opt-capwap.yang}
<CODE ENDS>
~~~~

## RFC 5460: DHCPv6 options model `ietf-dhcpv6-opt-relay-id`

This model covers the DHCPv6 options specified in {{!RFC5460}}: DHCPv6 Bulk Leasequery.

| IANA option code | IANA option name |
| :--: | --- |
| 53 | `OPTION_RELAY_ID` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-relay-id.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-relay-id.yang"
{::include ./yang/ietf-dhcpv6-opt-relay-id.yang}
<CODE ENDS>
~~~~

## RFC 5678: DHCPv6 options model `ietf-dhcpv6-opt-mos`

This model covers the DHCPv6 options specified in {{!RFC5678}}: Dynamic Host Configuration Protocol (DHCPv4 and DHCPv6) Options for IEEE 802.21 Mobility Services (MoS) Discovery.

| IANA option code | IANA option name |
| :--: | --- |
| 54 | `OPTION-IPv6_Address-MoS` |
| 55 | `OPTION-IPv6_FQDN-MoS` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-mos.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-mos.yang"
{::include ./yang/ietf-dhcpv6-opt-mos.yang}
<CODE ENDS>
~~~~

## RFC 5908: DHCPv6 options model `ietf-dhcpv6-opt-ntp`

This model covers the DHCPv6 options specified in {{!RFC5908}}: Network Time Protocol (NTP) Server Option for DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 56 | `OPTION_NTP_SERVER` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-ntp.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-ntp.yang"
{::include ./yang/ietf-dhcpv6-opt-ntp.yang}
<CODE ENDS>
~~~~

## RFC 5970: DHCPv6 options model `ietf-dhcpv6-opt-network-boot`

This model covers the DHCPv6 options specified in {{!RFC5970}}: DHCPv6 Options for Network Boot.

| IANA option code | IANA option name |
| :--: | --- |
| 59 | `OPT_BOOTFILE_URL` |
| 60 | `OPT_BOOTFILE_PARAM` |
| 61 | `OPTION_CLIENT_ARCH_TYPE` |
| 62 | `OPTION_NII` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-network-boot.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-network-boot.yang"
{::include ./yang/ietf-dhcpv6-opt-network-boot.yang}
<CODE ENDS>
~~~~

## RFC 5986: DHCPv6 options model `ietf-dhcpv6-opt-access-domain`

This model covers the DHCPv6 options specified in {{!RFC5986}}: DHCPv6 Options for Access Domain.

| IANA option code | IANA option name |
| :--: | --- |
| 57 | `OPTION_V6_ACCESS_DOMAIN` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-access-domain.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-access-domain.yang"
{::include ./yang/ietf-dhcpv6-opt-access-domain.yang}
<CODE ENDS>
~~~~

## RFC 6011: DHCPv6 options model `ietf-dhcpv6-opt-sip-ua`

This model covers the DHCPv6 options specified in {{!RFC6011}}: Option for SIP User Agent Configuration.

| IANA option code | IANA option name |
| :--: | --- |
| 58 | `OPTION_SIP_UA_CS_LIST` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-sip-ua.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-sip-ua.yang"
{::include ./yang/ietf-dhcpv6-opt-sip-ua.yang}
<CODE ENDS>
~~~~

## RFC 6153: DHCPv6 options model `ietf-dhcpv6-opt-andsf`

This model covers the DHCPv6 options specified in {{!RFC6153}}: DHCPv6 and DHCPv4 Options for Access Network Discovery and Selection Function (ANDSF) Discovery.

| IANA option code | IANA option name |
| :--: | --- |
| 143 | `OPTION-IPv6_Address-ANDSF` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-andsf.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-andsf.yang"
{::include ./yang/ietf-dhcpv6-opt-andsf.yang}
<CODE ENDS>
~~~~

## RFC 6225: DHCPv6 options model `ietf-dhcpv6-opt-geolocation`

This model covers the DHCPv6 options specified in {{!RFC6225}}: Geolocation Information for DHCP.

| IANA option code | IANA option name |
| :--: | --- |
| 63 | `OPTION_GEOLOCATION` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-geolocation.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-geolocation.yang"
{::include ./yang/ietf-dhcpv6-opt-geolocation.yang}
<CODE ENDS>
~~~~

## RFC 6334: DHCPv6 options model `ietf-dhcpv6-opt-dslite`

This model covers the DHCPv6 options specified in {{!RFC6334}}: Dynamic Host Configuration Protocol for IPv6 (DHCPv6) Option for Dual-Stack Lite.

| IANA option code | IANA option name |
| :--: | --- |
| 64 | `OPTION_AFTR_NAME` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-dslite.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-dslite.yang"
{::include ./yang/ietf-dhcpv6-opt-dslite.yang}
<CODE ENDS>
~~~~

## RFC 6422: DHCPv6 options model `ietf-dhcpv6-opt-relay-supplied`

This model covers the DHCPv6 options specified in {{!RFC6422}}: Relay-Supplied DHCP Options.

| IANA option code | IANA option name |
| :--: | --- |
| 66 | `OPTION_RSOO` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-relay-supplied.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-relay-supplied.yang"
{::include ./yang/ietf-dhcpv6-opt-relay-supplied.yang}
<CODE ENDS>
~~~~

## RFC 6440: DHCPv6 options model `ietf-dhcpv6-opt-erp-domain`

This model covers the DHCPv6 options specified in {{!RFC6440}}: EAP Re-authentication Protocol (ERP) Local Domain Name DHCPv6 Option.

| IANA option code | IANA option name |
| :--: | --- |
| 65 | `OPTION_ERP_LOCAL_DOMAIN_NAME` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-erp-domain.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-erp-domain.yang"
{::include ./yang/ietf-dhcpv6-opt-erp-domain.yang}
<CODE ENDS>
~~~~

## RFC 6603: DHCPv6 options model `ietf-dhcpv6-opt-pd-exclude`

This model covers the DHCPv6 options specified in {{!RFC6603}}: Prefix Exclude Option for DHCPv6-based Prefix Delegation.

| IANA option code | IANA option name |
| :--: | --- |
| 67 | `OPTION_PD_EXCLUDE` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-pd-exclude.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-pd-exclude.yang"
{::include ./yang/ietf-dhcpv6-opt-pd-exclude.yang}
<CODE ENDS>
~~~~

## RFC 6607: DHCPv6 options model `ietf-dhcpv6-opt-vss`

This model covers the DHCPv6 options specified in {{!RFC6607}}: Virtual Subnet Selection Options for DHCPv4 and DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 68 | `OPTION_VSS` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-vss.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-vss.yang"
{::include ./yang/ietf-dhcpv6-opt-vss.yang}
<CODE ENDS>
~~~~

## RFC 6610: DHCPv6 options model `ietf-dhcpv6-opt-mip6`

This model covers the DHCPv6 options specified in {{!RFC6610}}: DHCPv6 Options for Home Information Discovery in Mobile IPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 49 | `OPTION_MIP6_HNIDF` |
| 50 | `OPTION_MIP6_VDINF` |
| 69 | `OPTION_MIP6_IDINF` |
| 70 | `OPTION_MIP6_UDINF` |
| 71 | `OPTION_MIP6_HNP` |
| 72 | `OPTION_MIP6_HAA` |
| 73 | `OPTION_MIP6_HAF` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-mip6.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-mip6.yang"
{::include ./yang/ietf-dhcpv6-opt-mip6.yang}
<CODE ENDS>
~~~~


## RFC 6731: DHCPv6 options model `ietf-dhcpv6-opt-rdnss-selection`

This model covers the DHCPv6 options specified in {{!RFC6731}}: Improved Recursive DNS Server Selection for Multi-Interfaced Nodes.

| IANA option code | IANA option name |
| :--: | --- |
| 74 | `OPTION_RDNSS_SELECTION` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-rdnss-selection.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-rdnss-selection.yang"
{::include ./yang/ietf-dhcpv6-opt-rdnss-selection.yang}
<CODE ENDS>
~~~~

## RFC 6784: DHCPv6 options model `ietf-dhcpv6-opt-kerberos`

This model covers the DHCPv6 options specified in {{!RFC6784}}: Kerberos Options for DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 75 | `OPTION_KRB_PRINCIPAL_NAME` |
| 76 | `OPTION_KRB_REALM_NAME` |
| 77 | `OPTION_KRB_DEFAULT_REALM_NAME` |
| 78 | `OPTION_KRB_KDC` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-kerberos.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-kerberos.yang"
{::include ./yang/ietf-dhcpv6-opt-kerberos.yang}
<CODE ENDS>
~~~~

## RFC 6939: DHCPv6 options model `ietf-dhcpv6-opt-client-link-layer`

This model covers the DHCPv6 options specified in {{!RFC6939}}: Client Link-Layer Address Option in DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 79 | `OPTION_CLIENT_LINKLAYER_ADDR` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-client-link-layer.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-client-link-layer.yang"
{::include ./yang/ietf-dhcpv6-opt-client-link-layer.yang}
<CODE ENDS>
~~~~

## RFC 6977: DHCPv6 options model `ietf-dhcpv6-opt-link-address`

This model covers the DHCPv6 options specified in {{!RFC6977}}: Reducing Access Network Query and Response Time.

| IANA option code | IANA option name |
| :--: | --- |
| 80 | `OPTION_LINK_ADDRESS` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-link-address.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-link-address.yang"
{::include ./yang/ietf-dhcpv6-opt-link-address.yang}
<CODE ENDS>
~~~~

## RFC 7037: DHCPv6 options model `ietf-dhcpv6-opt-radius`

This model covers the DHCPv6 options specified in {{!RFC7037}}: RADIUS Option for the DHCPv6 Relay Agent.

| IANA option code | IANA option name |
| :--: | --- |
| 81 | `OPTION_RADIUS` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-radius.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-radius.yang"
{::include ./yang/ietf-dhcpv6-opt-radius.yang}
<CODE ENDS>
~~~~

## RFC 7078: DHCPv6 options model `ietf-dhcpv6-opt-address-selection`

This model covers the DHCPv6 options specified in {{!RFC7078}}: Distributing Address Selection Policy using DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 84 | `OPTION_ADDRSEL` |
| 85 | `OPTION_ADDRSEL_TABLE` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-address-selection.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-address-selection.yang"
{::include ./yang/ietf-dhcpv6-opt-address-selection.yang}
<CODE ENDS>
~~~~

## RFC 7291: DHCPv6 options model `ietf-dhcpv6-opt-pcp`

This model covers the DHCPv6 options specified in {{!RFC7291}}: DHCP Options for the Port Control Protocol (PCP).

| IANA option code | IANA option name |
| :--: | --- |
| 86 | `OPTION_V6_PCP_SERVER` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-pcp.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-pcp.yang"
{::include ./yang/ietf-dhcpv6-opt-pcp.yang}
<CODE ENDS>
~~~~

## RFC 7341: DHCPv6 options model `ietf-dhcpv6-opt-dhcpv4-over-dhcpv6`

This model covers the DHCPv6 options specified in {{!RFC7341}}: DHCPv4-over-DHCPv6 (DHCPv4oDHCPv6).

| IANA option code | IANA option name |
| :--: | --- |
| 87 | `OPTION_DHCPV4_MSG` |
| 88 | `OPTION_DHCP4_O_DHCP6_SERVER` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-dhcpv4-over-dhcpv6.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-dhcpv4-over-dhcpv6.yang"
{::include ./yang/ietf-dhcpv6-opt-dhcpv4-over-dhcpv6.yang}
<CODE ENDS>
~~~~

## RFC 7598: DHCPv6 options model `ietf-dhcpv6-opt-s46`

This model covers the DHCPv6 options specified in {{!RFC7598}}: Mapping of Address and Port with Encapsulation (MAP-E) and Translation (MAP-T).

| IANA option code | IANA option name |
| :--: | --- |
| 89 | `OPTION_S46_RULE` |
| 90 | `OPTION_S46_BR` |
| 91 | `OPTION_S46_DMR` |
| 92 | `OPTION_S46_V4V6BIND` |
| 93 | `OPTION_S46_PORTPARAMS` |
| 94 | `OPTION_S46_CONT_MAPE` |
| 95 | `OPTION_S46_CONT_MAPT` |
| 96 | `OPTION_S46_CONT_LW` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-s46.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-s46.yang"
{::include ./yang/ietf-dhcpv6-opt-s46.yang}
<CODE ENDS>
~~~~

## RFC 7600: DHCPv6 options model `ietf-dhcpv6-opt-4rd`

This model covers the DHCPv6 options specified in {{!RFC7600}}: IPv4 Residual Deployment via IPv6 (4rd) - A DHCPv6 Option.

| IANA option code | IANA option name |
| :--: | --- |
| 97 | `OPTION_4RD` |
| 98 | `OPTION_4RD_MAP_RULE` |
| 99 | `OPTION_4RD_NON_MAP_RULE` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-4rd.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-4rd.yang"
{::include ./yang/ietf-dhcpv6-opt-4rd.yang}
<CODE ENDS>
~~~~

## RFC 7653: DHCPv6 options model `ietf-dhcpv6-opt-active-leasequery`

This model covers the DHCPv6 options specified in {{!RFC7653}}: DHCPv6 Active Leasequery.

| IANA option code | IANA option name |
| :--: | --- |
| 100 | `OPTION_LQ_BASE_TIME` |
| 101 | `OPTION_LQ_START_TIME` |
| 102 | `OPTION_LQ_END_TIME` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-active-leasequery.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-active-leasequery.yang"
{::include ./yang/ietf-dhcpv6-opt-active-leasequery.yang}
<CODE ENDS>
~~~~

## RFC 7774: DHCPv6 options model `ietf-dhcpv6-opt-mpl-parameters`

This model covers the DHCPv6 options specified in {{!RFC7774}}: Multicast Protocol for Low-Power and Lossy Networks (MPL) Parameters.

| IANA option code | IANA option name |
| :--: | --- |
| 104 | `OPTION_MPL_PARAMETERS` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-mpl-parameters.tree}
~~~~


~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-mpl-parameters.yang"
{::include ./yang/ietf-dhcpv6-opt-mpl-parameters.yang}
<CODE ENDS>
~~~~

## RFC 7839: DHCPv6 options model `ietf-dhcpv6-opt-ani`

This model covers the DHCPv6 options specified in {{!RFC7839}}: Access-Network-Identifier (ANI) Option for DHCP.

| IANA option code | IANA option name |
| :--: | --- |
| 105 | `OPTION_ANI_ATT` |
| 106 | `OPTION_ANI_NETWORK_NAME` |
| 107 | `OPTION_ANI_AP_NAME` |
| 108 | `OPTION_ANI_AP_BSSID` |
| 109 | `OPTION_ANI_OPERATOR_ID` |
| 110 | `OPTION_ANI_OPERATOR_REALM` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-ani.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-ani.yang"
{::include ./yang/ietf-dhcpv6-opt-ani.yang}
<CODE ENDS>
~~~~

## RFC 8026: DHCPv6 options model `ietf-dhcpv6-opt-s46-priority`

This model covers the DHCPv6 options specified in {{!RFC8026}}: Unified IPv4-in-IPv6 Softwire Customer Premises Equipment (CPE): A DHCPv6-Based Prioritization Mechanism.

| IANA option code | IANA option name |
| :--: | --- |
| 111 | `OPTION_S46_PRIORITY` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-s46-priority.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-s46-priority.yang"
{::include ./yang/ietf-dhcpv6-opt-s46-priority.yang}
<CODE ENDS>
~~~~

## RFC 8115: DHCPv6 options model `ietf-dhcpv6-opt-prefix64`

This model covers the DHCPv6 options specified in {{!RFC8115}}: DHCPv6 Option for IPv4-Embedded Multicast and Unicast IPv6 Prefixes.

| IANA option code | IANA option name |
| :--: | --- |
| 113 | `OPTION_V6_PREFIX64` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-prefix64.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-prefix64.yang"
{::include ./yang/ietf-dhcpv6-opt-prefix64.yang}
<CODE ENDS>
~~~~

## RFC 8156: DHCPv6 options model `ietf-dhcpv6-opt-failover`

This model covers the DHCPv6 options specified in {{!RFC8156}}: DHCPv6 Failover Protocol.

| IANA option code | IANA option name |
| :--: | --- |
| 114 | `OPTION_F_BINDING_STATUS` |
| 115 | `OPTION_F_CONNECT_FLAGS` |
| 116 | `OPTION_F_DNS_REMOVAL_INFO` |
| 117 | `OPTION_F_DNS_HOST_NAME` |
| 118 | `OPTION_F_DNS_ZONE_NAME` |
| 119 | `OPTION_F_DNS_FLAGS` |
| 120 | `OPTION_F_EXPIRATION_TIME` |
| 121 | `OPTION_F_MAX_UNACKED_BNDUPD` |
| 122 | `OPTION_F_MCLT` |
| 123 | `OPTION_F_PARTNER_LIFETIME` |
| 124 | `OPTION_F_PARTNER_LIFETIME_SENT` |
| 125 | `OPTION_F_PARTNER_DOWN_TIME` |
| 126 | `OPTION_F_PARTNER_RAW_CLT_TIME` |
| 127 | `OPTION_F_PROTOCOL_VERSION` |
| 128 | `OPTION_F_KEEPALIVE_TIME` |
| 129 | `OPTION_F_RECONFIGURE_DATA` |
| 130 | `OPTION_F_RELATIONSHIP_NAME` |
| 131 | `OPTION_F_SERVER_FLAGS` |
| 132 | `OPTION_F_SERVER_STATE` |
| 133 | `OPTION_F_START_TIME_OF_STATE` |
| 134 | `OPTION_F_STATE_EXPIRATION_TIME` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-failover.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-failover.yang"
{::include ./yang/ietf-dhcpv6-opt-failover.yang}
<CODE ENDS>
~~~~

## RFC 8357: DHCPv6 options model `ietf-dhcpv6-opt-relay-port`

This model covers the DHCPv6 options specified in {{!RFC8357}}: DHCPv6 Relay Agent Port Option.

| IANA option code | IANA option name |
| :--: | --- |
| 135 | `OPTION_RELAY_PORT` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-relay-port.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-relay-port.yang"
{::include ./yang/ietf-dhcpv6-opt-relay-port.yang}
<CODE ENDS>
~~~~

## RFC 8520: DHCPv6 options model `ietf-dhcpv6-opt-mud`

This model covers the DHCPv6 options specified in {{!RFC8520}}: Manufacturer Usage Description Specification.

| IANA option code | IANA option name |
| :--: | --- |
| 112 | `OPTION_MUD_URL_V6` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-mud.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-mud.yang"
{::include ./yang/ietf-dhcpv6-opt-mud.yang}
<CODE ENDS>
~~~~

## RFC 8539: DHCPv6 options model `ietf-dhcpv6-opt-s46-binding-prefix`

This model covers the DHCPv6 options specified in {{!RFC8539}}: Softwire Provisioning Using DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 137 | `OPTION_S46_BIND_IPV6_PREFIX` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-s46-binding-prefix.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-s46-binding-prefix.yang"
{::include ./yang/ietf-dhcpv6-opt-s46-binding-prefix.yang}
<CODE ENDS>
~~~~

## RFC 8572: DHCPv6 options model `ietf-dhcpv6-opt-sztp-redirect`

This model covers the DHCPv6 options specified in {{!RFC8572}}: Secure Zero Touch Provisioning (SZTP).

| IANA option code | IANA option name |
| :--: | --- |
| 136 | `OPTION_V6_SZTP_REDIRECT` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-sztp-redirect.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-sztp-redirect.yang"
{::include ./yang/ietf-dhcpv6-opt-sztp-redirect.yang}
<CODE ENDS>
~~~~

## RFC 8947: DHCPv6 options model `ietf-dhcpv6-opt-link-layer`

This model covers the DHCPv6 options specified in {{!RFC8947}}: Link-Layer Address Assignment Mechanism for DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 138 | `OPTION_IA_LL` |
| 139 | `OPTION_LLADDR` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-link-layer.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-link-layer.yang"
{::include ./yang/ietf-dhcpv6-opt-link-layer.yang}
<CODE ENDS>
~~~~

## RFC 8948: DHCPv6 options model `ietf-dhcpv6-opt-slap-quad`

This model covers the DHCPv6 options specified in {{!RFC8948}}: DHCPv6 Options for the IEEE 802.1Q Shortest Path Bridging (SPB) Link Attribute Protocol (SLAP).

| IANA option code | IANA option name |
| :--: | --- |
| 140 | `OPTION_SLAP_QUAD` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-slap-quad.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-slap-quad.yang"
{::include ./yang/ietf-dhcpv6-opt-slap-quad.yang}
<CODE ENDS>
~~~~

## RFC 8973: DHCPv6 options model `ietf-dhcpv6-opt-dots`

This model covers the DHCPv6 options specified in {{!RFC8973}}: Distributed Denial-of-Service Open Threat Signaling (DOTS) Signal Channel.

| IANA option code | IANA option name |
| :--: | --- |
| 141 | `OPTION_V6_DOTS_RI` |
| 142 | `OPTION_V6_DOTS_ADDRESS` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-dots.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-dots.yang"
{::include ./yang/ietf-dhcpv6-opt-dots.yang}
<CODE ENDS>
~~~~

## RFC 9463: DHCPv6 options model `ietf-dhcpv6-opt-dnr`

This model covers the DHCPv6 options specified in {{!RFC9463}}: Discovery of Network-designated Resolvers (DNR) in DHCP.

| IANA option code | IANA option name |
| :--: | --- |
| 144 | `OPTION_V6_DNR` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-dnr.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-dnr.yang"
{::include ./yang/ietf-dhcpv6-opt-dnr.yang}
<CODE ENDS>
~~~~

## RFC 9527: DHCPv6 options model `ietf-dhcpv6-opt-homenet-naming`

This model covers the DHCPv6 options specified in {{!RFC9527}}: DHCPv6 Options for the Homenet Naming Authority.

| IANA option code | IANA option name |
| :--: | --- |
| 145 | `OPTION_REGISTERED_DOMAIN` |
| 146 | `OPTION_FORWARD_DIST_MANAGER` |
| 147 | `OPTION_REVERSE_DIST_MANAGER` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-homenet-naming.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-homenet-naming.yang"
{::include ./yang/ietf-dhcpv6-opt-homenet-naming.yang}
<CODE ENDS>
~~~~

## RFC 9686: DHCPv6 options model `ietf-dhcpv6-opt-address-registration`


This model covers the DHCPv6 options specified in {{!RFC9686}}: IPv6 Address Registration Option for DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 148 | `OPTION_ADDR_REG_ENABLE` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-address-registration.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-address-registration.yang"
{::include ./yang/ietf-dhcpv6-opt-address-registration.yang}
<CODE ENDS>
~~~~

## RFC 10038: DHCPv6 options model `ietf-dhcpv6-opt-srv6-locator`

This model covers the DHCPv6 options specified in {{!RFC10038}}: Distributing the Segment Routing over IPv6 (SRv6) Locator Using DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 149 | `OPTION_IA_SRV6_LOCATOR` |
| 150 | `OPTION_IALOCATOR` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-srv6-locator.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-srv6-locator.yang"
{::include ./yang/ietf-dhcpv6-opt-srv6-locator.yang}
<CODE ENDS>
~~~~
ianfarrer@T0026e6453 draft-lear-yangifying-dhcp-opts %
ianfarrer@T0026e6453 draft-lear-yangifying-dhcp-opts %
ianfarrer@T0026e6453 draft-lear-yangifying-dhcp-opts %
ianfarrer@T0026e6453 draft-lear-yangifying-dhcp-opts %
ianfarrer@T0026e6453 draft-lear-yangifying-dhcp-opts % cp ~/Documents/Codex/2026-11-18/rfc/outputs/dhcpv6-options.md .
ianfarrer@T0026e6453 draft-lear-yangifying-dhcp-opts % cat dhcpv6-options.md
# DHCPv6 Option Models

## RFC3319: ietf-dhcpv6-opt-sip YANG Model

This model covers the DHCPv6 options specified in {{!RFC3319}}: Dynamic Host Configuration Protocol (DHCPv6) Options for Session Initiation Protocol (SIP) Servers.

| IANA option code | IANA option name |
| :--: | --- |
| 21 | `OPTION_SIP_SERVER_D` |
| 22 | `OPTION_SIP_SERVER_A` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-sip.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-sip.yang"
{::include ./yang/ietf-dhcpv6-opt-sip.yang}
<CODE ENDS>
~~~~

## RFC3646: ietf-dhcpv6-opt-dns YANG Model

This model covers the DHCPv6 options specified in {{!RFC3646}}: DNS Configuration options for DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 23 | `OPTION_DNS_SERVERS` |
| 24 | `OPTION_DOMAIN_LIST` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-dns.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-dns.yang"
{::include ./yang/ietf-dhcpv6-opt-dns.yang}
<CODE ENDS>
~~~~

## RFC3898: ietf-dhcpv6-opt-nis YANG Model

This model covers the DHCPv6 options specified in {{!RFC3898}}: Network Information Service (NIS) Configuration Options for DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 27 | `OPTION_NIS_SERVERS` |
| 28 | `OPTION_NISP_SERVERS` |
| 29 | `OPTION_NIS_DOMAIN_NAME` |
| 30 | `OPTION_NISP_DOMAIN_NAME` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-nis.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-nis.yang"
{::include ./yang/ietf-dhcpv6-opt-nis.yang}
<CODE ENDS>
~~~~

## RFC4075: ietf-dhcpv6-opt-sntp YANG Model

This model covers the DHCPv6 options specified in {{!RFC4075}}: Simple Network Time Protocol (SNTP) Configuration Option for DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 31 | `OPTION_SNTP_SERVERS` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-sntp.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-sntp.yang"
{::include ./yang/ietf-dhcpv6-opt-sntp.yang}
<CODE ENDS>
~~~~

## RFC4280: ietf-dhcpv6-opt-bcmcs YANG Model

This model covers the DHCPv6 options specified in {{!RFC4280}}: Dynamic Host Configuration Protocol (DHCPv6) Options for Broadcast and Multicast Control Servers.

| IANA option code | IANA option name |
| :--: | --- |
| 33 | `OPTION_BCMCS_SERVER_D` |
| 34 | `OPTION_BCMCS_SERVER_A` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-bcmcs.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-bcmcs.yang"
{::include ./yang/ietf-dhcpv6-opt-bcmcs.yang}
<CODE ENDS>
~~~~

## RFC4580: ietf-dhcpv6-opt-subscriber-id YANG Model

This model covers the DHCPv6 options specified in {{!RFC4580}}: DHCPv6 Relay Agent Subscriber-ID Option.

| IANA option code | IANA option name |
| :--: | --- |
| 38 | `OPTION_SUBSCRIBER_ID` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-subscriber-id.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-subscriber-id.yang"
{::include ./yang/ietf-dhcpv6-opt-subscriber-id.yang}
<CODE ENDS>
~~~~

## RFC4649: ietf-dhcpv6-opt-remote-id YANG Model

This model covers the DHCPv6 options specified in {{!RFC4649}}: DHCPv6 Relay Agent Remote-ID Option.

| IANA option code | IANA option name |
| :--: | --- |
| 37 | `OPTION_REMOTE_ID` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-remote-id.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-remote-id.yang"
{::include ./yang/ietf-dhcpv6-opt-remote-id.yang}
<CODE ENDS>
~~~~

## RFC4704: ietf-dhcpv6-opt-client-fqdn YANG Model

This model covers the DHCPv6 options specified in {{!RFC4704}}: The DHCP Client Fully Qualified Domain Name (FQDN) Option.

| IANA option code | IANA option name |
| :--: | --- |
| 39 | `OPTION_CLIENT_FQDN` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-client-fqdn.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-client-fqdn.yang"
{::include ./yang/ietf-dhcpv6-opt-client-fqdn.yang}
<CODE ENDS>
~~~~

## RFC4776: ietf-dhcpv6-opt-civic YANG Model

This model covers the DHCPv6 options specified in {{!RFC4776}}: Dynamic Host Configuration Protocol (DHCPv4 and DHCPv6) Option for Civic Addresses Configuration Information.

| IANA option code | IANA option name |
| :--: | --- |
| 36 | `OPTION_GEOCONF_CIVIC` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-civic.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-civic.yang"
{::include ./yang/ietf-dhcpv6-opt-civic.yang}
<CODE ENDS>
~~~~

## RFC4833: ietf-dhcpv6-opt-timezone YANG Model

This model covers the DHCPv6 options specified in {{!RFC4833}}: Timezone Options for DHCP.

| IANA option code | IANA option name |
| :--: | --- |
| 41 | `OPTION_NEW_POSIX_TIMEZONE` |
| 42 | `OPTION_NEW_TZDB_TIMEZONE` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-timezone.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-timezone.yang"
{::include ./yang/ietf-dhcpv6-opt-timezone.yang}
<CODE ENDS>
~~~~

## RFC4994: ietf-dhcpv6-opt-echo-request YANG Model

This model covers the DHCPv6 options specified in {{!RFC4994}}: DHCPv6 Relay Agent Echo Request Option.

| IANA option code | IANA option name |
| :--: | --- |
| 43 | `OPTION_ERO` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-echo-request.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-echo-request.yang"
{::include ./yang/ietf-dhcpv6-opt-echo-request.yang}
<CODE ENDS>
~~~~

## RFC5007: ietf-dhcpv6-opt-leasequery YANG Model

This model covers the DHCPv6 options specified in {{!RFC5007}}: DHCPv6 Leasequery.

| IANA option code | IANA option name |
| :--: | --- |
| 44 | `OPTION_LQ_QUERY` |
| 45 | `OPTION_CLIENT_DATA` |
| 46 | `OPTION_CLT_TIME` |
| 47 | `OPTION_LQ_RELAY_DATA` |
| 48 | `OPTION_LQ_CLIENT_LINK` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-leasequery.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-leasequery.yang"
{::include ./yang/ietf-dhcpv6-opt-leasequery.yang}
<CODE ENDS>
~~~~

## RFC5192: ietf-dhcpv6-opt-pana-agent YANG Model

This model covers the DHCPv6 options specified in {{!RFC5192}}: DHCP Options for the Protocol for carrying Authentication for Network Access (PANA).

| IANA option code | IANA option name |
| :--: | --- |
| 40 | `OPTION_PANA_AGENT` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-pana-agent.tree}
~~~~


~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-pana-agent.yang"
{::include ./yang/ietf-dhcpv6-opt-pana-agent.yang}
<CODE ENDS>
~~~~

## RFC5223: ietf-dhcpv6-opt-lost YANG Model

This model covers the DHCPv6 options specified in {{!RFC5223}}: A DHCPv6-based Location-to-Service Translation Protocol (LoST) Discovery.

| IANA option code | IANA option name |
| :--: | --- |
| 51 | `OPTION_V6_LOST` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-lost.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-lost.yang"
{::include ./yang/ietf-dhcpv6-opt-lost.yang}
<CODE ENDS>
~~~~

## RFC5417: ietf-dhcpv6-opt-capwap YANG Model

This model covers the DHCPv6 options specified in {{!RFC5417}}: Control And Provisioning of Wireless Access Points (CAPWAP) Access Controller DHCP Option.

| IANA option code | IANA option name |
| :--: | --- |
| 52 | `OPTION_CAPWAP_AC_V6` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-capwap.tree}

~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-capwap.yang"
{::include ./yang/ietf-dhcpv6-opt-capwap.yang}
<CODE ENDS>
~~~~

## RFC5460: ietf-dhcpv6-opt-relay-id YANG Model

This model covers the DHCPv6 options specified in {{!RFC5460}}: DHCPv6 Bulk Leasequery.

| IANA option code | IANA option name |
| :--: | --- |
| 53 | `OPTION_RELAY_ID` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-relay-id.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-relay-id.yang"
{::include ./yang/ietf-dhcpv6-opt-relay-id.yang}
<CODE ENDS>
~~~~

## RFC5678: ietf-dhcpv6-opt-mos YANG Model

This model covers the DHCPv6 options specified in {{!RFC5678}}: Dynamic Host Configuration Protocol (DHCPv4 and DHCPv6) Options for IEEE 802.21 Mobility Services (MoS) Discovery.

| IANA option code | IANA option name |
| :--: | --- |
| 54 | `OPTION-IPv6_Address-MoS` |
| 55 | `OPTION-IPv6_FQDN-MoS` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-mos.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-mos.yang"
{::include ./yang/ietf-dhcpv6-opt-mos.yang}
<CODE ENDS>
~~~~

## RFC5908: ietf-dhcpv6-opt-ntp YANG Model

This model covers the DHCPv6 options specified in {{!RFC5908}}: Network Time Protocol (NTP) Server Option for DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 56 | `OPTION_NTP_SERVER` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-ntp.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-ntp.yang"
{::include ./yang/ietf-dhcpv6-opt-ntp.yang}
<CODE ENDS>
~~~~

## RFC5970: ietf-dhcpv6-opt-network-boot YANG Model

This model covers the DHCPv6 options specified in {{!RFC5970}}: DHCPv6 Options for Network Boot.

| IANA option code | IANA option name |
| :--: | --- |
| 59 | `OPT_BOOTFILE_URL` |
| 60 | `OPT_BOOTFILE_PARAM` |
| 61 | `OPTION_CLIENT_ARCH_TYPE` |
| 62 | `OPTION_NII` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-network-boot.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-network-boot.yang"
{::include ./yang/ietf-dhcpv6-opt-network-boot.yang}
<CODE ENDS>
~~~~

## RFC5986: ietf-dhcpv6-opt-access-domain YANG Model

This model covers the DHCPv6 options specified in {{!RFC5986}}: DHCPv6 Options for Access Domain.

| IANA option code | IANA option name |
| :--: | --- |
| 57 | `OPTION_V6_ACCESS_DOMAIN` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-access-domain.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-access-domain.yang"
{::include ./yang/ietf-dhcpv6-opt-access-domain.yang}
<CODE ENDS>
~~~~

## RFC6011: ietf-dhcpv6-opt-sip-ua YANG Model

This model covers the DHCPv6 options specified in {{!RFC6011}}: Option for SIP User Agent Configuration.

| IANA option code | IANA option name |
| :--: | --- |
| 58 | `OPTION_SIP_UA_CS_LIST` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-sip-ua.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-sip-ua.yang"
{::include ./yang/ietf-dhcpv6-opt-sip-ua.yang}
<CODE ENDS>
~~~~

## RFC6153: ietf-dhcpv6-opt-andsf YANG Model

This model covers the DHCPv6 options specified in {{!RFC6153}}: DHCPv6 and DHCPv4 Options for Access Network Discovery and Selection Function (ANDSF) Discovery.

| IANA option code | IANA option name |
| :--: | --- |
| 143 | `OPTION-IPv6_Address-ANDSF` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-andsf.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-andsf.yang"
{::include ./yang/ietf-dhcpv6-opt-andsf.yang}
<CODE ENDS>
~~~~

## RFC6225: ietf-dhcpv6-opt-geolocation YANG Model

This model covers the DHCPv6 options specified in {{!RFC6225}}: Geolocation Information for DHCP.

| IANA option code | IANA option name |
| :--: | --- |
| 63 | `OPTION_GEOLOCATION` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-geolocation.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-geolocation.yang"
{::include ./yang/ietf-dhcpv6-opt-geolocation.yang}
<CODE ENDS>
~~~~

## RFC6334: ietf-dhcpv6-opt-dslite YANG Model

This model covers the DHCPv6 options specified in {{!RFC6334}}: Dynamic Host Configuration Protocol for IPv6 (DHCPv6) Option for Dual-Stack Lite.

| IANA option code | IANA option name |
| :--: | --- |
| 64 | `OPTION_AFTR_NAME` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-dslite.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-dslite.yang"
{::include ./yang/ietf-dhcpv6-opt-dslite.yang}
<CODE ENDS>
~~~~

## RFC6422: ietf-dhcpv6-opt-relay-supplied YANG Model

This model covers the DHCPv6 options specified in {{!RFC6422}}: Relay-Supplied DHCP Options.

| IANA option code | IANA option name |
| :--: | --- |
| 66 | `OPTION_RSOO` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-relay-supplied.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-relay-supplied.yang"
{::include ./yang/ietf-dhcpv6-opt-relay-supplied.yang}
<CODE ENDS>
~~~~

## RFC6440: ietf-dhcpv6-opt-erp-domain YANG Model

This model covers the DHCPv6 options specified in {{!RFC6440}}: EAP Re-authentication Protocol (ERP) Local Domain Name DHCPv6 Option.

| IANA option code | IANA option name |
| :--: | --- |
| 65 | `OPTION_ERP_LOCAL_DOMAIN_NAME` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-erp-domain.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-erp-domain.yang"
{::include ./yang/ietf-dhcpv6-opt-erp-domain.yang}
<CODE ENDS>
~~~~

## RFC6603: ietf-dhcpv6-opt-pd-exclude YANG Model

This model covers the DHCPv6 options specified in {{!RFC6603}}: Prefix Exclude Option for DHCPv6-based Prefix Delegation.

| IANA option code | IANA option name |
| :--: | --- |
| 67 | `OPTION_PD_EXCLUDE` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-pd-exclude.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-pd-exclude.yang"
{::include ./yang/ietf-dhcpv6-opt-pd-exclude.yang}
<CODE ENDS>
~~~~

## RFC6607: ietf-dhcpv6-opt-vss YANG Model

This model covers the DHCPv6 options specified in {{!RFC6607}}: Virtual Subnet Selection Options for DHCPv4 and DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 68 | `OPTION_VSS` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-vss.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-vss.yang"
{::include ./yang/ietf-dhcpv6-opt-vss.yang}
<CODE ENDS>
~~~~


## RFC6610: ietf-dhcpv6-opt-mip6 YANG Model

This model covers the DHCPv6 options specified in {{!RFC6610}}: DHCPv6 Options for Home Information Discovery in Mobile IPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 49 | `OPTION_MIP6_HNIDF` |
| 50 | `OPTION_MIP6_VDINF` |
| 69 | `OPTION_MIP6_IDINF` |
| 70 | `OPTION_MIP6_UDINF` |
| 71 | `OPTION_MIP6_HNP` |
| 72 | `OPTION_MIP6_HAA` |
| 73 | `OPTION_MIP6_HAF` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-mip6.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-mip6.yang"
{::include ./yang/ietf-dhcpv6-opt-mip6.yang}
<CODE ENDS>
~~~~

## RFC6731: ietf-dhcpv6-opt-rdnss-selection YANG Model

This model covers the DHCPv6 options specified in {{!RFC6731}}: Improved Recursive DNS Server Selection for Multi-Interfaced Nodes.

| IANA option code | IANA option name |
| :--: | --- |
| 74 | `OPTION_RDNSS_SELECTION` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-rdnss-selection.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-rdnss-selection.yang"
{::include ./yang/ietf-dhcpv6-opt-rdnss-selection.yang}
<CODE ENDS>
~~~~

## RFC6784: ietf-dhcpv6-opt-kerberos YANG Model

This model covers the DHCPv6 options specified in {{!RFC6784}}: Kerberos Options for DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 75 | `OPTION_KRB_PRINCIPAL_NAME` |
| 76 | `OPTION_KRB_REALM_NAME` |
| 77 | `OPTION_KRB_DEFAULT_REALM_NAME` |
| 78 | `OPTION_KRB_KDC` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-kerberos.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-kerberos.yang"
{::include ./yang/ietf-dhcpv6-opt-kerberos.yang}
<CODE ENDS>
~~~~

## RFC6939: ietf-dhcpv6-opt-client-link-layer YANG Model

This model covers the DHCPv6 options specified in {{!RFC6939}}: Client Link-Layer Address Option in DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 79 | `OPTION_CLIENT_LINKLAYER_ADDR` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-client-link-layer.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-client-link-layer.yang"
{::include ./yang/ietf-dhcpv6-opt-client-link-layer.yang}
<CODE ENDS>
~~~~

## RFC6977: ietf-dhcpv6-opt-link-address YANG Model

This model covers the DHCPv6 options specified in {{!RFC6977}}: Reducing Access Network Query and Response Time.

| IANA option code | IANA option name |
| :--: | --- |
| 80 | `OPTION_LINK_ADDRESS` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-link-address.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-link-address.yang"
{::include ./yang/ietf-dhcpv6-opt-link-address.yang}
<CODE ENDS>
~~~~

## RFC7037: ietf-dhcpv6-opt-radius YANG Model

This model covers the DHCPv6 options specified in {{!RFC7037}}: RADIUS Option for the DHCPv6 Relay Agent.

| IANA option code | IANA option name |
| :--: | --- |
| 81 | `OPTION_RADIUS` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-radius.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-radius.yang"
{::include ./yang/ietf-dhcpv6-opt-radius.yang}
<CODE ENDS>
~~~~

## RFC7078: ietf-dhcpv6-opt-address-selection YANG Model

This model covers the DHCPv6 options specified in {{!RFC7078}}: Distributing Address Selection Policy using DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 84 | `OPTION_ADDRSEL` |
| 85 | `OPTION_ADDRSEL_TABLE` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-address-selection.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-address-selection.yang"
{::include ./yang/ietf-dhcpv6-opt-address-selection.yang}
<CODE ENDS>
~~~~

## RFC7291: ietf-dhcpv6-opt-pcp YANG Model

This model covers the DHCPv6 options specified in {{!RFC7291}}: DHCP Options for the Port Control Protocol (PCP).

| IANA option code | IANA option name |
| :--: | --- |
| 86 | `OPTION_V6_PCP_SERVER` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-pcp.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-pcp.yang"
{::include ./yang/ietf-dhcpv6-opt-pcp.yang}
<CODE ENDS>
~~~~

## RFC7341: ietf-dhcpv6-opt-dhcpv4-over-dhcpv6 YANG Model

This model covers the DHCPv6 options specified in {{!RFC7341}}: DHCPv4-over-DHCPv6 (DHCPv4oDHCPv6).

| IANA option code | IANA option name |
| :--: | --- |
| 87 | `OPTION_DHCPV4_MSG` |
| 88 | `OPTION_DHCP4_O_DHCP6_SERVER` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-dhcpv4-over-dhcpv6.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-dhcpv4-over-dhcpv6.yang"
{::include ./yang/ietf-dhcpv6-opt-dhcpv4-over-dhcpv6.yang}
<CODE ENDS>
~~~~

## RFC7598: ietf-dhcpv6-opt-s46 YANG Model

This model covers the DHCPv6 options specified in {{!RFC7598}}: Mapping of Address and Port with Encapsulation (MAP-E) and Translation (MAP-T).

| IANA option code | IANA option name |
| :--: | --- |
| 89 | `OPTION_S46_RULE` |
| 90 | `OPTION_S46_BR` |
| 91 | `OPTION_S46_DMR` |
| 92 | `OPTION_S46_V4V6BIND` |
| 93 | `OPTION_S46_PORTPARAMS` |
| 94 | `OPTION_S46_CONT_MAPE` |
| 95 | `OPTION_S46_CONT_MAPT` |
| 96 | `OPTION_S46_CONT_LW` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-s46.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-s46.yang"
{::include ./yang/ietf-dhcpv6-opt-s46.yang}
<CODE ENDS>
~~~~

## RFC7600: ietf-dhcpv6-opt-4rd YANG Model

This model covers the DHCPv6 options specified in {{!RFC7600}}: IPv4 Residual Deployment via IPv6 (4rd) - A DHCPv6 Option.

| IANA option code | IANA option name |
| :--: | --- |
| 97 | `OPTION_4RD` |
| 98 | `OPTION_4RD_MAP_RULE` |
| 99 | `OPTION_4RD_NON_MAP_RULE` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-4rd.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-4rd.yang"
{::include ./yang/ietf-dhcpv6-opt-4rd.yang}
<CODE ENDS>
~~~~

## RFC7653: ietf-dhcpv6-opt-active-leasequery YANG Model

This model covers the DHCPv6 options specified in {{!RFC7653}}: DHCPv6 Active Leasequery.

| IANA option code | IANA option name |
| :--: | --- |
| 100 | `OPTION_LQ_BASE_TIME` |
| 101 | `OPTION_LQ_START_TIME` |
| 102 | `OPTION_LQ_END_TIME` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-active-leasequery.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-active-leasequery.yang"
{::include ./yang/ietf-dhcpv6-opt-active-leasequery.yang}
<CODE ENDS>
~~~~

## RFC7774: ietf-dhcpv6-opt-mpl-parameters YANG Model

This model covers the DHCPv6 options specified in {{!RFC7774}}: Multicast Protocol for Low-Power and Lossy Networks (MPL) Parameters.

| IANA option code | IANA option name |
| :--: | --- |
| 104 | `OPTION_MPL_PARAMETERS` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-mpl-parameters.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-mpl-parameters.yang"
{::include ./yang/ietf-dhcpv6-opt-mpl-parameters.yang}
<CODE ENDS>
~~~~

## RFC7839: ietf-dhcpv6-opt-ani YANG Model

This model covers the DHCPv6 options specified in {{!RFC7839}}: Access-Network-Identifier (ANI) Option for DHCP.

| IANA option code | IANA option name |
| :--: | --- |
| 105 | `OPTION_ANI_ATT` |
| 106 | `OPTION_ANI_NETWORK_NAME` |
| 107 | `OPTION_ANI_AP_NAME` |
| 108 | `OPTION_ANI_AP_BSSID` |
| 109 | `OPTION_ANI_OPERATOR_ID` |
| 110 | `OPTION_ANI_OPERATOR_REALM` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-ani.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-ani.yang"
{::include ./yang/ietf-dhcpv6-opt-ani.yang}
<CODE ENDS>
~~~~

## RFC8026: ietf-dhcpv6-opt-s46-priority YANG Model

This model covers the DHCPv6 options specified in {{!RFC8026}}: Unified IPv4-in-IPv6 Softwire Customer Premises Equipment (CPE): A DHCPv6-Based Prioritization Mechanism.

| IANA option code | IANA option name |
| :--: | --- |
| 111 | `OPTION_S46_PRIORITY` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-s46-priority.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-s46-priority.yang"
{::include ./yang/ietf-dhcpv6-opt-s46-priority.yang}
<CODE ENDS>
~~~~

## RFC8115: ietf-dhcpv6-opt-prefix64 YANG Model

This model covers the DHCPv6 options specified in {{!RFC8115}}: DHCPv6 Option for IPv4-Embedded Multicast and Unicast IPv6 Prefixes.

| IANA option code | IANA option name |
| :--: | --- |
| 113 | `OPTION_V6_PREFIX64` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-prefix64.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-prefix64.yang"
{::include ./yang/ietf-dhcpv6-opt-prefix64.yang}
<CODE ENDS>
~~~~

## RFC8156: ietf-dhcpv6-opt-failover YANG Model

This model covers the DHCPv6 options specified in {{!RFC8156}}: DHCPv6 Failover Protocol.

| IANA option code | IANA option name |
| :--: | --- |
| 114 | `OPTION_F_BINDING_STATUS` |
| 115 | `OPTION_F_CONNECT_FLAGS` |
| 116 | `OPTION_F_DNS_REMOVAL_INFO` |
| 117 | `OPTION_F_DNS_HOST_NAME` |
| 118 | `OPTION_F_DNS_ZONE_NAME` |
| 119 | `OPTION_F_DNS_FLAGS` |
| 120 | `OPTION_F_EXPIRATION_TIME` |
| 121 | `OPTION_F_MAX_UNACKED_BNDUPD` |
| 122 | `OPTION_F_MCLT` |
| 123 | `OPTION_F_PARTNER_LIFETIME` |
| 124 | `OPTION_F_PARTNER_LIFETIME_SENT` |
| 125 | `OPTION_F_PARTNER_DOWN_TIME` |
| 126 | `OPTION_F_PARTNER_RAW_CLT_TIME` |
| 127 | `OPTION_F_PROTOCOL_VERSION` |
| 128 | `OPTION_F_KEEPALIVE_TIME` |
| 129 | `OPTION_F_RECONFIGURE_DATA` |
| 130 | `OPTION_F_RELATIONSHIP_NAME` |
| 131 | `OPTION_F_SERVER_FLAGS` |
| 132 | `OPTION_F_SERVER_STATE` |
| 133 | `OPTION_F_START_TIME_OF_STATE` |
| 134 | `OPTION_F_STATE_EXPIRATION_TIME` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-failover.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-failover.yang"
{::include ./yang/ietf-dhcpv6-opt-failover.yang}
<CODE ENDS>
~~~~

## RFC8357: ietf-dhcpv6-opt-relay-port YANG Model

This model covers the DHCPv6 options specified in {{!RFC8357}}: DHCPv6 Relay Agent Port Option.

| IANA option code | IANA option name |
| :--: | --- |
| 135 | `OPTION_RELAY_PORT` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-relay-port.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-relay-port.yang"
{::include ./yang/ietf-dhcpv6-opt-relay-port.yang}
<CODE ENDS>
~~~~

## RFC8520: ietf-dhcpv6-opt-mud YANG Model

This model covers the DHCPv6 options specified in {{!RFC8520}}: Manufacturer Usage Description Specification.

| IANA option code | IANA option name |
| :--: | --- |
| 112 | `OPTION_MUD_URL_V6` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-mud.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-mud.yang"
{::include ./yang/ietf-dhcpv6-opt-mud.yang}
<CODE ENDS>
~~~~

## RFC8539: ietf-dhcpv6-opt-s46-binding-prefix YANG Model

This model covers the DHCPv6 options specified in {{!RFC8539}}: Softwire Provisioning Using DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 137 | `OPTION_S46_BIND_IPV6_PREFIX` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-s46-binding-prefix.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-s46-binding-prefix.yang"
{::include ./yang/ietf-dhcpv6-opt-s46-binding-prefix.yang}
<CODE ENDS>
~~~~

## RFC8572: ietf-dhcpv6-opt-sztp-redirect YANG Model

This model covers the DHCPv6 options specified in {{!RFC8572}}: Secure Zero Touch Provisioning (SZTP).

| IANA option code | IANA option name |
| :--: | --- |
| 136 | `OPTION_V6_SZTP_REDIRECT` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-sztp-redirect.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-sztp-redirect.yang"
{::include ./yang/ietf-dhcpv6-opt-sztp-redirect.yang}
<CODE ENDS>
~~~~

## RFC8947: ietf-dhcpv6-opt-link-layer YANG Model

This model covers the DHCPv6 options specified in {{!RFC8947}}: Link-Layer Address Assignment Mechanism for DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 138 | `OPTION_IA_LL` |
| 139 | `OPTION_LLADDR` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-link-layer.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-link-layer.yang"
{::include ./yang/ietf-dhcpv6-opt-link-layer.yang}
<CODE ENDS>
~~~~

## RFC8948: ietf-dhcpv6-opt-slap-quad YANG Model

This model covers the DHCPv6 options specified in {{!RFC8948}}: DHCPv6 Options for the IEEE 802.1Q Shortest Path Bridging (SPB) Link Attribute Protocol (SLAP).

| IANA option code | IANA option name |
| :--: | --- |
| 140 | `OPTION_SLAP_QUAD` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-slap-quad.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-slap-quad.yang"
{::include ./yang/ietf-dhcpv6-opt-slap-quad.yang}
<CODE ENDS>
~~~~

## RFC8973: ietf-dhcpv6-opt-dots YANG Model

This model covers the DHCPv6 options specified in {{!RFC8973}}: Distributed Denial-of-Service Open Threat Signaling (DOTS) Signal Channel.

| IANA option code | IANA option name |
| :--: | --- |
| 141 | `OPTION_V6_DOTS_RI` |
| 142 | `OPTION_V6_DOTS_ADDRESS` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-dots.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-dots.yang"
{::include ./yang/ietf-dhcpv6-opt-dots.yang}
<CODE ENDS>
~~~~

## RFC9463: ietf-dhcpv6-opt-dnr YANG Model

This model covers the DHCPv6 options specified in {{!RFC9463}}: Discovery of Network-designated Resolvers (DNR) in DHCP.

| IANA option code | IANA option name |
| :--: | --- |
| 144 | `OPTION_V6_DNR` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-dnr.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-dnr.yang"
{::include ./yang/ietf-dhcpv6-opt-dnr.yang}
<CODE ENDS>
~~~~

## RFC9527: ietf-dhcpv6-opt-homenet-naming YANG Model

This model covers the DHCPv6 options specified in {{!RFC9527}}: DHCPv6 Options for the Homenet Naming Authority.

| IANA option code | IANA option name |
| :--: | --- |
| 145 | `OPTION_REGISTERED_DOMAIN` |
| 146 | `OPTION_FORWARD_DIST_MANAGER` |
| 147 | `OPTION_REVERSE_DIST_MANAGER` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-homenet-naming.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-homenet-naming.yang"
{::include ./yang/ietf-dhcpv6-opt-homenet-naming.yang}
<CODE ENDS>
~~~~

## RFC9686: ietf-dhcpv6-opt-address-registration YANG Model

This model covers the DHCPv6 options specified in {{!RFC9686}}: IPv6 Address Registration Option for DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 148 | `OPTION_ADDR_REG_ENABLE` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-address-registration.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-address-registration.yang"
{::include ./yang/ietf-dhcpv6-opt-address-registration.yang}
<CODE ENDS>
~~~~

## RFC10038: ietf-dhcpv6-opt-srv6-locator YANG Model

This model covers the DHCPv6 options specified in {{!RFC10038}}: Distributing the Segment Routing over IPv6 (SRv6) Locator Using DHCPv6.

| IANA option code | IANA option name |
| :--: | --- |
| 149 | `OPTION_IA_SRV6_LOCATOR` |
| 150 | `OPTION_IALOCATOR` |

~~~~
{::include ./yang/ietf-dhcpv6-opt-srv6-locator.tree}
~~~~

~~~~
<CODE BEGINS> file "ietf-dhcpv6-opt-srv6-locator.yang"
{::include ./yang/ietf-dhcpv6-opt-srv6-locator.yang}
<CODE ENDS>
~~~~

## Conventions and Definitions

{::boilerplate bcp14-tagged}


# Security Considerations {#security}

TODO Security


# IANA Considerations {#iana}

TODO IANA considerations.


--- back

# Acknowledgments
{::numbered="fals"}

TODO acknowledge.
