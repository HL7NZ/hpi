
//Aliases for extensions
Alias: $organization-period = http://hl7.org.nz/fhir/StructureDefinition/organization-period
//Alias: $aliasType = http://hl7.org.nz/fhir/hpi/StructureDefinition/aliasType

Profile:        HpiOrganization
Parent:         CommonOrganization
Id:             HpiOrganization
Title:          "HPI Organization"
Description:    "Organizations used by the HPI. For example DHB's, PHO's and Primary care Practices"

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^purpose = "Describe the Organization that will be returned by the HPI"
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>HPI Organization  profile</div>"
* ^text.status = #additional

//elements that have been removed
* address 0..0
* contact 0..0

* telecom.use from https://standards.digital.health.nz/fhir/ValueSet/hpi-contact-point-use-code

//top level  extensions
* extension contains 
    $organization-period named organization-period 0..1  

* extension[organization-period] ^short = "The period over which this Organization has been formed"
    


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