Extension: Dhb
Id: dhb
Description: "The District Health Board the patient resides in. It is derived from the patient's primary residential address (not updated directly)."

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/dhb"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ


//Note - haven't made it against the address (even though it is derived from that as it's more logical to have it as a top level extension)
* ^context.type = #element
* ^context.expression = "Patient"       
* ^context[1].type = #element
* ^context[1].expression = "Location"   

* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/dhb-code (preferred)