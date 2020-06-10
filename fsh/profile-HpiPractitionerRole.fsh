//Aliases for extensions
Alias: $practitionerRole-status = http://hl7.org.nz/fhir/hpi/StructureDefinition/practitionerRole-status
Alias: $practitionerRole-creator = http://hl7.org.nz/fhir/hpi/StructureDefinition/practitionerRole-creator

Profile:        HpiPractitionerRole
Parent:         PractitionerRole
Id:             HpiPractitionerRole
Title:          "HPI Practitioner role"
Description:    "The practitioner role exposed by the HPI. Used to connect Practitioners with Organizations and Locations, indicating the role they have. A single Practitioner can have roles with multple organizations."

* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>HPI PractitionerRole profile</div>"
* ^text.status = #additional

* ^purpose = "Describe the PractitionerRole that will be returned by the HPI"

//top level  extensions
* extension contains 
    $practitionerRole-status named practitionerRole-status 0..1 and 
    $practitionerRole-creator named practitionerRole-creator 0..1
    
//elements that have been removed
* active 0..0
* specialty 0..0
* healthcareService 0..0
* availableTime 0..0
* notAvailable 0..0
* availabilityExceptions 0..0

//location and rolecode (code) multiplicity reduced
* location 0..1
* code 0..1
* endpoint 0..1

* code from http://hl7.org.nz/fhir/ValueSet/practitionerRoleCodes