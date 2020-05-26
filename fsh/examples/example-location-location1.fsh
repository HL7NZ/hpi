Instance:   location1
InstanceOf: HpiLocation

* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>East End Surgery</div>"
* text.status = #additional

* status = #active
* name = "East End Surgery"
* description = "Fully equipped General Practice"

//the current Organization Fac id
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/id/hpi-facility"
* identifier.value = "FAC-1"

//a dormant Fac id
* identifier[1].use = #old
* identifier[1].system = "https://standards.digital.health.nz/id/hpi-facility"
* identifier[1].value = "FAC-OLD1"

//trading as 'East End Inc'
* alias = "East End Inc."

//Short name
* alias.extension[aliasType].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/fhir/CodeSystem/aliasType"
* alias.extension[aliasType].valueCodeableConcept.coding.code = #short
* alias.extension[aliasType].valueCodeableConcept.coding.display = "Short"


//otherwise known as 'dr dobbs surgery'
* alias[1] = "Dr Dobbs Surgery"
* alias[1].extension[aliasType].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/fhir/CodeSystem/aliasType"
* alias[1].extension[aliasType].valueCodeableConcept.coding.code = #aka
* alias[1].extension[aliasType].valueCodeableConcept.coding.display = "Aka"

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
