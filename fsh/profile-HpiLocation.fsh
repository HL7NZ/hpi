
// Aliases for extensions
Alias: $aliasType = http://hl7.org.nz/fhir/hpi/StructureDefinition/aliasType
Alias: $dhb = http://hl7.org.nz/fhir/StructureDefinition/dhb
Alias: $hpiLocation-established = http://hl7.org.nz/fhir/hpi/StructureDefinition/location-established

Alias: $nzAddress = http://hl7.org.nz/fhir/StructureDefinition/nzAddress

Profile:        HpiLocation
Parent:         NzLocation
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


//todo - is this corrrect?
* address only $nzAddress

* type from http://hl7.org.nz/fhir/ValueSet/locationType


* alias.extension contains 
    $aliasType named aliasType 1..1

//set that the Valueset is from the set of alias types for Location (It's not set on the extension)
* alias.extension[aliasType].valueCodeableConcept from http://hl7.org.nz/fhir/ValueSet/Location-aliasType (preferred)
