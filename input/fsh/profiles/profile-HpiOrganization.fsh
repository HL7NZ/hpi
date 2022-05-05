
//Aliases for extensions
//Alias: $established = http://hl7.org.nz/fhir/StructureDefinition/established
//Alias: $aliasType = http://hl7.org.nz/fhir/StructureDefinition/alias-type

Profile:        HpiOrganization
Parent:         Organization
Id:             HpiOrganization
Title:          "HPI Organization"
Description:    "An entity that provides services of interest to, or is involved in, the business of health care service provision."

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/hpiOrganization"

* ^purpose = "Describe the Organization that will be returned by the HPI"
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>HPI Organization  profile</div>"
* ^text.status = #additional

//elements that have been removed
* address 0..0
* contact 0..0
* endpoint 0..0

* telecom.use from https://nzhts.digital.health.nz/fhir/ValueSet/hpi-contact-point-use-code
* partOf only Reference(HpiOrganization)


// -------- copied from common

* address only NzAddress

//slice the identifier for HPI Organization identifierr
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"


* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "system"

* identifier ^slicing.rules = #open
* identifier contains 
    orgId 1..1 MS and
    legacyOrgId 0..1 and 
    nzbn 0..1 MS and
    dormant 0..* MS

* type from https://nzhts.digital.health.nz/fhir/ValueSet/organisation-type-code
    
* identifier.use from $identifier-use-vs
* identifier.use ^short = "official | old"

* identifier[orgId].system = "https://standards.digital.health.nz/ns/hpi-organisation-id" (exactly)
* identifier[orgId].use = #official (exactly)
* identifier[orgId].use ^short = "fixed to official"
* identifier[orgId] ^short = "The current HPI organization Id for this Organization"
* identifier[orgId].type 0..0
* identifier[orgId].period 0..0
* identifier[orgId].assigner only Reference(HpiOrganization)

* identifier[legacyOrgId].system = "https://standards.digital.health.nz/ns/nzhis-agency-id" (exactly)
* identifier[legacyOrgId].use = #official (exactly)
* identifier[legacyOrgId].use ^short = "fixed to official"
* identifier[legacyOrgId] ^short = "The MOH (NZHIS) Legacy agency code)"
* identifier[legacyOrgId].type 0..0
* identifier[legacyOrgId].period 0..0
* identifier[legacyOrgId].assigner only Reference(HpiOrganization)

* identifier[nzbn].system = "https://standards.digital.health.nz/ns/hpi-nzbn" (exactly)
* identifier[nzbn].use = #official (exactly)
* identifier[nzbn].use ^short = "fixed to official"
* identifier[nzbn] ^short = "The New Zealand Business Number"
* identifier[nzbn].type 0..0
* identifier[nzbn].period 0..0
* identifier[nzbn].assigner only Reference(HpiOrganization)

* identifier[dormant].system = "https://standards.digital.health.nz/id/hpi-org" (exactly)
* identifier[dormant].use = #old (exactly)
* identifier[dormant].use ^short = "fixed to old"
* identifier[dormant] ^short = "Identifiers which have been deprecated"
* identifier[dormant].type 0..0
* identifier[dormant].period 0..0
* identifier[dormant].assigner only Reference(HpiOrganization)
//------------

//top level  extensions
* extension contains 
    $established named established 0..1  

* extension[established] ^short = "The period over which this Organization has been established"
 
//add an extension to alias
* alias.extension contains
    $aliasType named alias-type 0..1


* alias.extension[alias-type].valueCodeableConcept from https://nzhts.digital.health.nz/fhir/ValueSet/organization-alias-type-code (preferred)
* alias.extension[alias-type] ^short = "The type of alias for this Organization - eg its Maori name"

