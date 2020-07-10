Extension: Organization_period
Id: organization-period
Description: "The period over which the Organization is active"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/organization-period"

* ^context.type = #element
* ^context.expression = "Organization"

* extension 0..0
* value[x] only Period