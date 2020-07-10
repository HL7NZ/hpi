Extension: Location_established
Id: location-established
Description: "The period over which the location is open"
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/location-established"

* ^context.type = #element
* ^context.expression = "Location"

* extension 0..0
* value[x] only Period