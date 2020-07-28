Instance:   location1
InstanceOf: HpiLocation

* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>East End Surgery</div>"
* text.status = #additional



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


//MOH facility code
* identifier[2].use = #official
* identifier[2].system = "https://standards.digital.health.nz/ns/legacy-tbd-id"
* identifier[2].value = "FAC-code"


//trading as 'East End Inc'
* alias = "East End Inc."

//Short name
* alias.extension[alias-type].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/ns/alias-type-code"
* alias.extension[alias-type].valueCodeableConcept.coding.code = #short
* alias.extension[alias-type].valueCodeableConcept.coding.display = "Short"


//otherwise known as 'dr dobbs surgery'
* alias[1] = "Dr Dobbs Surgery"
* alias[1].extension[alias-type].valueCodeableConcept.coding.system = "https://standards.digital.health.nz/ns/alias-type-code"
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
* endpoint = Reference(ep1)


Instance:   ep1
InstanceOf: HpiEndpoint

* status = #active
* identifier.system = "https://standards.digital.health.nz/ns/endpoint-healthlink"
* identifier.value = "MyMailBox"
* connectionType.system = "http://terminology.hl7.org/CodeSystem/endpoint-connection-type"
* connectionType.code = #secure-email
* payloadType = https://standards.digital.health.nz/ns/endpoint-payload-type-code#v2 "HL7 V2 message"
* address = "healthlink.com"

/*
Instance:   bundle2
InstanceOf: Bundle
//BaseType: Bundle
Description: "Sample query response"
Usage: #example

* type = #searchset        //will actuallyy 
* entry[0].resource = patient2
* entry[0].fullUrl = "http://clinfhir.com/Patient/patient2"

* entry[1].resource = gp-pracrole1
* entry[1].fullUrl = "http://clinfhir.com/PractitionerRole/gp-pracrole1"

* entry[2].resource = ghc
* entry[2].fullUrl = "http://clinfhir.com/Location/ghc"

* entry[3].resource = drwelby
* entry[3].fullUrl = "http://clinfhir.com/Practitioner/drwelby"

*/