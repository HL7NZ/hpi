
// Aliases for extensions
Alias: $aliasType = http://hl7.org.nz/fhir/StructureDefinition/alias-type
Alias: $dhb = http://hl7.org.nz/fhir/StructureDefinition/dhb
Alias: $hpiLocation-established = http://hl7.org.nz/fhir/StructureDefinition/location-established

Alias: $commonAddress = http://hl7.org.nz/fhir/StructureDefinition/CommonAddress

Profile:        HpiLocation
Parent:         CommonLocation
Id:             HpiLocation
Title:          "HPI Location"
Description:    "Locations used by the HPI. These are also called Facilities."

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

//elements that have been removed
* operationalStatus 0..0
* mode 0..0
* physicalType 0..0
* hoursOfOperation 0..0
* availabilityExceptions 0..0
* position 0..0

//top level  extensions
* extension contains 
    $hpiLocation-established named location-established 0..1 and
    $dhb named dhb 0..1 
   
 * extension[location-established] ^short = "The date when this location first became available for use"
 * extension[dhb] ^short = "The identifier for the DHB that is associated with this location"

* status from https://standards.digital.health.nz/fhir/ValueSet/hpi-location-status-code

//the use elements use only a subset of the values...
//* identifier.system from https://standards.digital.health.nz/fhir/ValueSet/hpi-identifier-use
* telecom.use from https://standards.digital.health.nz/fhir/ValueSet/hpi-contact-point-use-code


* address only $commonAddress
* address.use from https://standards.digital.health.nz/fhir/ValueSet/hpi-location-address-use-code

* type from https://standards.digital.health.nz/fhir/ValueSet/location-type-code


* alias.extension contains 
    $aliasType named alias-type 1..1

//set that the Valueset is from the set of alias types for Location (It's not set on the extension)
* alias.extension[alias-type].valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/location-alias-type-code (preferred)
* alias.extension[alias-type] ^short = "The type of alias this is - eg its Maori name"

* endpoint only Reference(HpiEndpoint)