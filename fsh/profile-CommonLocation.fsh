Alias: $ediAddress = http://hl7.org.nz/fhir/StructureDefinition/edi-number

Profile:        CommonLocation
Parent:         Location
Id:             CommonLocation
Title:          "NZ Location"
Description:    "NZ common Location profile. Adds slicing for HPI Facility code and uses nzAddress"

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>NZ Location profile</div>"
* ^text.status = #additional


//root level extensions
* extension contains
    $ediAddress named edi-number 0..1
* extension[edi-number] ^short = "The EDI number associated with this Location"

//Needs to be a different geocode as uses a different datum
* address only CommonAddress

//slice the identifier
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #openAtEnd

* identifier contains 
    HpifacId 0..1 MS and
    dormantHpiFacId 0..* MS 
    //MOHFacId 0..1 MS

* identifier[HpifacId].system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* identifier[HpifacId].use = #official (exactly)
* identifier[HpifacId] ^short = "The current Facility id for this location"

* identifier[dormantHpiFacId].system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* identifier[dormantHpiFacId].use = #old (exactly)
* identifier[dormantHpiFacId] ^short = "Old facility id's that have been deprecated"

/*
todo - can;'t just slice on use - needs to be system + use'
* identifier[MOHFacId].system = "https://standards.digital.health.nz/ns/legacy-tbd-id"
* identifier[MOHFacId].use = #official (exactly)
* identifier[MOHFacId] ^short = "The MOH (NZHIS) Legacy facility code)"
*/


/* todo 

//slice telecom to add edi account
* telecom ^slicing.discriminator.type = #pattern
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #openAtEnd

* telecom contains 
    edi-address 0..1

* telecom[edi-address].system = #other (exactly)
* telecom[edi-address].extension.url = $ediAddress
* telecom[edi-address].extension.valueString = "healthlink" (exactly)
* telecom[edi-address] ^short = "The healthLink EDI address associated with this Location"

*/