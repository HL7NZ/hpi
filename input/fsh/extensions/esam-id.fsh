Extension: Esam_id
Id: esam-id
Description: "The id from eSam"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/esam-id"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^context.type = #element
* ^context.expression = "Location"

* ^status = #draft


* extension 0..0
* value[x] only string