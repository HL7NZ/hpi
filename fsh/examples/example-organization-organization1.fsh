Instance:   organization1
InstanceOf: HpiOrganization

* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Good Health Medical Centre</div>"
* text.status = #additional

//the clinic name
* name = "Good Health Medical Centre"
* alias = "Adequate Health Medical Centre"
* active = true

//the current Organization id
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/id/hpi-org"
* identifier.value = "ORG-1"

//an identifier assigned by the NZBN
* identifier[1].use = #official
* identifier[1].system = "https://standards.digital.health.nz/id/nzbn"
* identifier[1].value = "98ZZB"

//type of organization
* type.coding.system = "https://standards.digital.health.nz/codesystem/hpiOrganizationType"
* type.coding.code = #gp
* type.coding.display = "General Practice clinic"

//contact details
* telecom.system = #email
* telecom.value = "admin@ghmc"
* telecom[1].system = #phone
* telecom[1].value = "+64 9 456 7765"

