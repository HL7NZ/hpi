Extension: Location_alias_type
Id: location-alias-type
Description: "Indicates the type of alias name"


* ^context.type = #element
* ^context.expression = "Location.alias"

* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from http://standards.digital.health.nz/fhir/ValueSet/location-alias-type (preferred)