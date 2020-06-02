Extension: AliasType
Id: aliasType
Description: "Indicates the type of alias name. VS Binding is done by the profile."


* ^context.type = #element
* ^context.expression = "Location.alias"

* extension 0..0
//The dataype is fixed to CodeableConcept, but it's up to the profile to bind it to a ValueSet
* value[x] only CodeableConcept
