
Alias: $ediAddress = http://hl7.org.nz/fhir/StructureDefinition/edi-number

Profile:        CommonOrganization
Parent:         Organization
Id:             CommonOrganization
Title:          "NZ Organization"
Description:    "base NZ Organization profile. Slices on identifier for HPI and uses nzAddress"

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>NZ base Organization  profile. </div>"
* ^text.status = #additional

/*
//root level extensions
* extension contains
    $ediAddress named edi-number 0..1

* extension[edi-number] ^short = "The EDI number associated with this Organization"
*/
* address only CommonAddress

//slice the identifier for HPI Organization identifierr
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"


* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "system"

* identifier ^slicing.rules = #open
* identifier contains 
    orgId 0..* MS

* identifier[orgId].system = "https://standards.digital.health.nz/ns/hpi-organisation-id" (exactly)
* identifier[orgId].use = #official (exactly)
* identifier[orgId] ^short = "The current HPI organization Id for this Organization"


