
//Aliases for extensions
Alias: $organization-established = http://hl7.org.nz/fhir/StructureDefinition/organization-established
//Alias: $aliasType = http://hl7.org.nz/fhir/hpi/StructureDefinition/aliasType

Profile:        HpiOrganization
Parent:         CommonOrganization
Id:             HpiOrganization
Title:          "HPI Organization"
Description:    "An entity that provides services of interest to, or is involved in, the business of health care service provision."

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^purpose = "Describe the Organization that will be returned by the HPI"
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>HPI Organization  profile</div>"
* ^text.status = #additional

//elements that have been removed
* address 0..0
* contact 0..0
* type 0..0
* telecom.use from https://standards.digital.health.nz/fhir/ValueSet/hpi-contact-point-use-code

//top level  extensions
* extension contains 
    $organization-established named organization-establishedestablished 0..1  

* extension[organization-established] ^short = "The period over which this Organization has been established"
    


//slice the identifier
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #openAtEnd
* identifier contains 
    dormant 0..* MS


* identifier[dormant].system = "https://standards.digital.health.nz/id/hpi-org" (exactly)
* identifier[dormant].use = #old (exactly)

//add an extension to alias
* alias.extension contains
    alias-type 0..1


* alias.extension[alias-type].valueCodeableConcept from https://standards.digital.health.nz/fhir/ValueSet/organization-alias-type-code (preferred)
* alias.extension[alias-type] ^short = "The type of alias for this Organization - eg its Maori name"