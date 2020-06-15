
//Aliases for extensions
Alias: $organization-period = http://hl7.org.nz/fhir/hpi/StructureDefinition/organization-period
Alias: $aliasType = http://hl7.org.nz/fhir/hpi/StructureDefinition/aliasType

Profile:        HpiOrganization
Parent:         Organization
Id:             HpiOrganization
Title:          "HPI Organization"
Description:    "Organizations used by the HPI. For example DHB's, PHO's and Primary care Practices"



* ^purpose = "Describe the Organization that will be returned by the HPI"
* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>HPI Organization  profile</div>"
* ^text.status = #additional

//elements that have been removed
* address 0..0
* contact 0..0

* telecom.use from http://hl7.org.nz/fhir/ValueSet/hpi-contactpoint-use

//top level  extensions
* extension contains 
    $organization-period named organization-period 0..1  
    
* identifier.system from http://hl7.org.nz/fhir/ValueSet/hpi-identifier-use

//slice the identifier
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #openAtEnd
* identifier contains 
    dormant 0..* MS


* identifier[dormant].system = "https://standards.digital.health.nz/id/hpi-org"
* identifier[dormant].use = #old

//add an extension to alias
* alias.extension contains
    aliasType named aliasType 0..1


* alias.extension[aliasType].valueCodeableConcept from http://hl7.org.nz/fhir/ValueSet/organization-alias-type (preferred)