Extension: Organization_aliasType
Id: organization-aliasType
Description: "The type of alias. eg abbreviated, maori..."


* ^context.type = #element
* ^context.expression = "Organization.alias"

* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from http://standards.digital.health.nz/fhir/ValueSet/organization-alias-type (preferred)