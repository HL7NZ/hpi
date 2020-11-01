Alias: $ediAddress = http://hl7.org.nz/fhir/StructureDefinition/edi-number

Profile:        CommonLocation
Parent:         Location
Id:             CommonLocation
Title:          "NZ Location"
Description:    "NZ common Location profile. Adds slicing for HPI Facility code and uses nzAddress"

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>NZ Location profile</div>"
* ^text.status = #additional

/*
//root level extensions
* extension contains
    $ediAddress named edi-number 0..1
* extension[edi-number] ^short = "The EDI number associated with this Location"

*/
//Needs to be a different geocode as uses a different datum
* address only CommonAddress

//slice the identifier
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"

* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "system"

* identifier ^slicing.rules = #open

* identifier contains 
    facId 0..1 MS and
    dormant 0..* MS and
    legacyFacId 0..1 MS

* identifier[facId].system = "https://standards.digital.health.nz/ns/hpi-facility-id" (exactly)
* identifier[facId].use = #official (exactly)
* identifier[facId] ^short = "The current Facility id for this location"

* identifier[dormant].system = "https://standards.digital.health.nz/ns/hpi-facility-id" (exactly)
* identifier[dormant].use = #old (exactly)
* identifier[dormant] ^short = "Old facility id's that have been deprecated"


* identifier[legacyFacId].system = "https://standards.digital.health.nz/ns/legacy-tbd-id" (exactly)
* identifier[legacyFacId].use = #official (exactly)
* identifier[legacyFacId] ^short = "The MOH (NZHIS) Legacy facility code)"


