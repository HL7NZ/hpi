Instance:   location1
InstanceOf: HpiLocation


* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>East End Surgery</div>"
* text.status = #additional

* status = #active
* name = "East End Surgery"
* description = "Fully equipped General Practice"

//the current Organization Fac id
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/id/hpi-fgacility"
* identifier.value = "FAC-1"

//a dormant Fac id
* identifier.use = #old
* identifier.system = "https://standards.digital.health.nz/id/hpi-fgacility"
* identifier.value = "FAC-OLD1"

//trrading as 'East End Inc'
* alias = "East End Inc."

//an extension on this alias that indicates that the alias type is 'trading as'
* alias.extension[location-alias-type].valueCodeableConcept.coding.system = "http://standards.digital.health.nz/fhir/ValueSet/aliasType"
* alias.extension[location-alias-type].valueCodeableConcept.coding.code = #ta
* alias.extension[location-alias-type].valueCodeableConcept.coding.display = "Trading As"

//otherwise known as 'dr dobbs surgery'
* alias[1] = "Dr Dobbs Surgery"
* alias[1].extension[location-alias-type].valueCodeableConcept.coding.system = "http://standards.digital.health.nz/fhir/ValueSet/aliasType"
* alias[1].extension[location-alias-type].valueCodeableConcept.coding.code = #local
* alias[1].extension[location-alias-type].valueCodeableConcept.coding.display = "Locally known name"

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
