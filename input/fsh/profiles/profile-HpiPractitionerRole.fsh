//Aliases for extensions
Alias: $practitionerRole-status-reason = http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-status-reason
Alias: $practitionerRole-creator = http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-creator
Alias: $edi-address = http://hl7.org.nz/fhir/StructureDefinition/edi-address

Profile:        HpiPractitionerRole
Parent:         PractitionerRole
Id:             HpiPractitionerRole
Title:          "HPI Practitioner role"
Description:    "The practitioner role exposed by the HPI. Used to connect Practitioners with Organizations and Locations, indicating the role they have. A single Practitioner can have roles with multiple organizations."

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitionerRole"



//slice identiifer - added wed
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"

* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "system"

* identifier ^slicing.description = "The identifiers"
* identifier ^slicing.rules = #openAtEnd

* identifier contains 
    RI 1..1 MS 

* identifier[RI].system = "https://standards.digital.health.nz/ns/hpi-practitionerrole-id" (exactly)
* identifier[RI].use = #official (exactly)
* identifier[RI].use ^short = "PractitionerRole Id"


* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>HPI PractitionerRole profile</div>"
* ^text.status = #additional

* ^purpose = "Describe the PractitionerRole that will be returned by the HPI"

//top level  extensions
* extension contains 
    $practitionerRole-status-reason named practitionerRole-status-reason 0..1 and 
    $practitionerRole-creator named practitionerRole-creator 0..1

* extension[practitionerRole-status-reason] ^short = "The reson for the status of this role. Generally when it is inactive."
* extension[practitionerRole-creator] ^short = "The person and/or organization that created the PR"
    
//elements that have been removed

* specialty 0..0
* healthcareService 0..0
* availableTime 0..0
* availableTime.daysOfWeek 0..0         //to remove the terminology binding
* notAvailable 0..0
* availabilityExceptions 0..0
//causing an error from the RI slice - not sure why* identifier.type 0..0

//location and rolecode (code) multiplicity reduced
* location 0..1
* code 0..1
* endpoint 0..0
* telecom.use from https://nzhts.digital.health.nz/fhir/ValueSet/hpi-contact-point-use-code

* telecom.extension contains
    $edi-address named edi-address 0..1


* code from https://nzhts.digital.health.nz/fhir/ValueSet/practitioner-role-code
