Extension: HlEDINumber
Id: hl-edi-number
Description: "Represents the HealthLink EDI number. "
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/hl-edi-number"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Location"

* ^context[1].type = #element
* ^context[1].expression = "Organization"

* ^context[2].type = #element
* ^context[2].expression = "HealthcareService"

* ^context[2].type = #element
* ^context[2].expression = "ContactPoint"

* extension 0..0
* value[x] only string 
