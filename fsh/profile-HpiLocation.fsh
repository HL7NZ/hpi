
// Aliases for extensions
Alias: $location-alias-type = http://hl7.org.nz/fhir/hpi/StructureDefinition/location-alias-type
Alias: $dhb = http://hl7.org.nz/fhir/StructureDefinition/dhb
Alias: $hpiLocation-established = http://hl7.org.nz/fhir/hpi/StructureDefinition/location-established

Alias: $nzAddress = http://hl7.org.nz/fhir/StructureDefinition/nzAddress

Profile:        HpiLocation
Parent:         Location
Id:             HpiLocation
Title:          "HPI Location"
Description:    "Locations used by the HPI. These are also called Facilities."

//elements that have been removed
* operationalStatus 0..0
* mode 0..0
* physicalType 0..0
* hoursOfOperation 0..0
* availabilityExceptions 0..0

//top level  extensions
* extension contains 
    $hpiLocation-established named location-established 0..1 and
    $dhb named dhb 0..1

* address only $nzAddress

//slice the identifier
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #openAtEnd

* identifier contains 
    dormant 0..* MS

* identifier[dormant].system = "https://standards.digital.health.nz/id/hpi-person"
* identifier[dormant].use = #old

* alias.extension contains 
    $location-alias-type named location-alias-type 0..1
