//Aliases for extensions
Alias: $practitionerRole-status = http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-status
Alias: $practitionerRole-creator = http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-creator

Profile:        HpiPractitionerRole
Parent:         PractitionerRole
Id:             HpiPractitionerRole
Title:          "HPI Practitioner role"
Description:    "The practitioner role exposed by the HPI. Used to connect Practitioners with Organizations and Locations, indicating the role they have. A single Practitioner can have roles with multple organizations."

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>HPI PractitionerRole profile</div>"
* ^text.status = #additional

* ^purpose = "Describe the PractitionerRole that will be returned by the HPI"

//top level  extensions
* extension contains 
    $practitionerRole-status named practitionerRole-status 0..1 and 
    $practitionerRole-creator named practitionerRole-creator 0..1

* extension[practitionerRole-status] ^short = "The status of this PR - eg is it still active"
* extension[practitionerRole-creator] ^short = "The person and/or organization that created the PR"
    
//elements that have been removed
* active 0..0
* specialty 0..0
* healthcareService 0..0
* availableTime 0..0
* availableTime.daysOfWeek 0..0         //to remove the terminology binding
* notAvailable 0..0
* availabilityExceptions 0..0
* identifier.type 0..0

//location and rolecode (code) multiplicity reduced
* location 0..1
* code 0..1
* endpoint 0..1
* telecom.use from https://standards.digital.health.nz/fhir/ValueSet/hpi-contact-point-use-code

// - wrong, should ne a NamingSystem* identifier.system from https://standards.digital.health.nz/fhir/ValueSet/hpi-identifier-use-code


* code from https://standards.digital.health.nz/fhir/ValueSet/practitioner-role-code
