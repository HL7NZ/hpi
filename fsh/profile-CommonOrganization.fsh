
//Alias: $ediAddress = http://hl7.org.nz/fhir/StructureDefinition/edi-address

Profile:        CommonOrganization
Parent:         Organization
Id:             CommonOrganization
Title:          "NZ Organization"
Description:    "base NZ Organization profile. Slices on identifier for HPI and uses nzAddress"


* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>NZ base Organization  profile. </div>"
* ^text.status = #additional
//root level extensions
* extension contains
     hl-edi-number 0..1

* extension[hl-edi-number] ^short = "The healthLink EDI address associated with this Organization"

* address only CommonAddress

//slice the identifier for HPI Organization identifierr
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #openAtEnd
* identifier contains 
    orgId 0..* MS

* identifier[orgId].system = "https://standards.digital.health.nz/id/hpi-org"
* identifier[orgId].use = #official
* identifier[orgId] ^short = "The current HPI organization Id for this Organization"


