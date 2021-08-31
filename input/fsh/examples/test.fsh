Instance: hltest
InstanceOf: Patient
Description: "Patient1"
Usage: #example

* name.text = "John Doe"

* telecom.value = "hl1234"  //the actual edi address

* telecom.system = #other
* telecom.system.extension.url = "http://hl7.org.nz/fhir/StructureDefinition/edi-address"
* telecom.system.extension.valueString = "healthLink"       //healthlink is the edi supplier