Instance: hltest
InstanceOf: Patient
Description: "Patient1"
Usage: #example

* name.text = "John Doe"
* telecom.value = "abc1234"
* telecom.system = #other

* telecom.system.extension.url = "http://hl7.org.nz/fhir/StructureDefinition/edi-address"
* telecom.system.extension.valueCode = #edi