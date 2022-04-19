// Aliases for extensions
Alias: $aliasType = http://hl7.org.nz/fhir/StructureDefinition/alias-type
Alias: $dhb = http://hl7.org.nz/fhir/StructureDefinition/dhb
Alias: $established = http://hl7.org.nz/fhir/StructureDefinition/established
Alias: $commonAddress = http://hl7.org.nz/fhir/StructureDefinition/CommonAddress
Alias: $edi-address = http://hl7.org.nz/fhir/StructureDefinition/edi-address

Profile:        HpiLocation
Parent:         Location
Id:             HpiLocation
Title:          "HPI Location"
Description:    "A physical location from which health goods and/or services are provided.  They are also referred to as an HPI Facility."

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/HPILocation"
//elements that have been removed
* operationalStatus 0..0
* mode 0..0
* physicalType 0..0
* hoursOfOperation 0..0
* availabilityExceptions 0..0
* position 0..0
* endpoint 0..0



//------- copied from commonLocation

//Needs to be a different geocode as uses a different datum
* address only NzAddress

//slice the identifier
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"

* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "system"

* identifier ^slicing.rules = #open

* identifier contains 
    facId 1..1 MS and
    dormant 0..* MS and
    legacyFacId 0..1 




* identifier[facId].system = "https://standards.digital.health.nz/ns/hpi-facility-id" (exactly)
* identifier[facId].use = #official (exactly)
* identifier[facId].use ^short  = "fixed to official"
* identifier[facId] ^short = "The current Facility id for this location"

* identifier[dormant].system = "https://standards.digital.health.nz/ns/hpi-facility-id" (exactly)
* identifier[dormant].use = #old (exactly)
* identifier[dormant].use ^short  = "fixed to old"
* identifier[dormant] ^short = "Old facility id's that have been deprecated"


* identifier[legacyFacId].system = "https://standards.digital.health.nz/ns/nzhis-facility-id" (exactly)
* identifier[legacyFacId].use = #official (exactly)
* identifier[legacyFacId].use ^short  = "fixed to official"
* identifier[legacyFacId] ^short = "The MOH (NZHIS) Legacy facility code)"

//top level  extensions
* extension contains 
    $established named established 0..1 and
    $dhb named dhb 0..1 
   
* extension[established] ^short = "The date when this location first became available for use"
* extension[dhb] ^short = "The identifier for the DHB that is associated with this location"

* status from https://nzhts.digital.health.nz/fhir/ValueSet/hpi-location-status-code 

//the use elements use only a subset of the values...
//* identifier.system from https://standards.digital.health.nz/fhir/ValueSet/hpi-identifier-use
* identifier.use from $identifier-use-vs
* identifier.use ^short = "official | old"


* telecom.use from https://nzhts.digital.health.nz/fhir/ValueSet/hpi-contact-point-use-code

* telecom.extension contains
    $edi-address named edi-address 0..1

//* address only $commonAddress
* address.use from https://nzhts.digital.health.nz/fhir/ValueSet/hpi-location-address-use-code

* type from https://nzhts.digital.health.nz/fhir/ValueSet/location-type-code


* alias.extension contains 
    $aliasType named alias-type 1..1

//set that the Valueset is from the set of alias types for Location (It's not set on the extension)

* alias.extension[alias-type].valueCodeableConcept from https://nzhts.digital.health.nz/fhir/ValueSet/location-alias-type-code (preferred)
* alias.extension[alias-type] ^short = "The type of alias this is - eg its Maori name"
