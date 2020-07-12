Instance:   location1
InstanceOf: HpiLocation

* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>East End Surgery</div>"
* text.status = #additional

* extension[edi-number].extension[organization].valueIdentifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* extension[edi-number].extension[organization].valueIdentifier.value = "healthlinkOrgId"
* extension[edi-number].extension[value].valueString = "myHLEDIumber"

* status = #active
* name = "East End Surgery"
* description = "Fully equipped General Practice"

//the current Organization Facility id
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* identifier.value = "F123456-5-1"

//a dormant Fac id
* identifier[1].use = #old
* identifier[1].system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* identifier[1].value = "F123456-5-0"

/* temp - only one use value of #official is being allowed
//MOH facility code
* identifier[2].use = #official
* identifier[2].system = "https://standards.digital.health.nz/ns/legacy-tbd-id"
* identifier[2].value = "FAC-code"
*/

//trading as 'East End Inc'
* alias = "East End Inc."

//Short name
* alias.extension[alias-type].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/ns/alias-type"
* alias.extension[alias-type].valueCodeableConcept.coding.code = #short
* alias.extension[alias-type].valueCodeableConcept.coding.display = "Short"


//otherwise known as 'dr dobbs surgery'
* alias[1] = "Dr Dobbs Surgery"
* alias[1].extension[alias-type].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/ns/alias-type"
* alias[1].extension[alias-type].valueCodeableConcept.coding.code = #aka
* alias[1].extension[alias-type].valueCodeableConcept.coding.display = "Aka"

//email address
* telecom.system = #email
* telecom.value = "admin@drdobbs"
* telecom[1].system = #phone
* telecom[1].value = "+64 9 456 7765"

//physical address
* address.line = "23 Thule St"
* address.city = "Waipu"

//'responsible' organization
* managingOrganization = Reference(organization1)
