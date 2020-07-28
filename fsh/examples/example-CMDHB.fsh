Instance:   cmdhb
InstanceOf: HpiOrganization
//BaseType: Organization
Description: "Counties Manakau DHB"
Usage: #example

* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Counties Manakau DHB</div>"
* text.status = #additional

* name = "Counties Manakau DHB"

* identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier.value = "cmdhb-1"
* identifier.use = #official


* telecom.system = #other
* telecom.value = "123456"
* telecom.extension.url = "http://hl7.org.nz/fhir/StructureDefinition/contact-point-other"
* telecom.extension.valueCoding.system = "https://standards.digital.health.nz/ns/contact-point-other-code"
* telecom.extension.valueCoding.code = #webforum
//* extension[hl-edi-number].valueString = "xxx"



