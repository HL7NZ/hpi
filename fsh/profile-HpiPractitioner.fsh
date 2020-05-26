
//Aliases for extensions
Alias: $death-date = http://hl7.org.nz/fhir/hpi/StructureDefinition/death-date
Alias: $registration-status = http://hl7.org.nz/fhir/hpi/StructureDefinition/registration-status
Alias: $additional-authorization = http://hl7.org.nz/fhir/hpi/StructureDefinition/additional-authorization

Alias: $condition-on-practice = http://hl7.org.nz/fhir/hpi/StructureDefinition/condition-on-practice
Alias: $registration-initial-date = http://hl7.org.nz/fhir/hpi/StructureDefinition/registration-initial-date

Alias: $scope-of-practice = http://hl7.org.nz/fhir/hpi/StructureDefinition/scope-of-practice

Profile:        HpiPractitioner
Parent:         NzPractitioner
Id:             HpiPractitioner
Title:          "HPI Practitioner"
Description:    "The practitioner exposed by the HPI. This is the person who delivers care - regardless of qualification."

* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>HPI Practitioner profile</div>"
* ^text.status = #additional

* ^purpose = "Describe the Practitioner that will be returned by the HPI"




//elements that have been removed
* active 0..0
* telecom 0..0
* address 0..0
* photo 0..0

//top level  extensions
* extension contains 
    $death-date named death-date 0..1 

//slice identifier to add none or more dormant NHI as Must Support
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #openAtEnd
* identifier contains 
    dormant 0..* MS
* identifier[dormant].system = "https://standards.digital.health.nz/id/hpi-person"
* identifier[dormant].use = #old
* identifier[dormant] ^short = "CPN (Common Person Name) identifiers that have been deprecated for this Person"

//the gender is required by the HPI
* gender 1..1

//many extensions on qualification
* qualification.extension contains
    $registration-status named registration-status 0..1 and
    $additional-authorization named additional-authorization 0..* and
    $scope-of-practice named scope-of-practice 0..* and
    $condition-on-practice named condition-on-practice 0..* and
    $registration-initial-date named registration-initial-date 0..1

