Extension: EDINumber
Id: edi-number
Description: "An identifier used with electronic communication systems - such as HealthLink. "
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/edi-number"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^context.type = #element
* ^context.expression = "Location"

* ^context[1].type = #element
* ^context[1].expression = "Organization"

* ^context[2].type = #element
* ^context[2].expression = "HealthcareService"

* ^context[2].type = #element
* ^context[2].expression = "ContactPoint"

* extension contains
    organization 1..1 and 
    value 1..1 

* extension[organization].url = "organization" (exactly)

* extension[organization] ^definition = "The organization that maintains this EDI number - eg Healhlink"
* extension[organization].value[x] only Identifier
* extension[organization].valueIdentifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
   
// definitions of sub-extensions
* extension[value].url = "value" (exactly)
* extension[value] ^definition = "The EDI number value"
* extension[value].value[x] only string


