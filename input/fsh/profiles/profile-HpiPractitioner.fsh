
//Aliases for extensions
Alias: $death-date = http://hl7.org.nz/fhir/StructureDefinition/death-date
Alias: $registration-status-code = http://hl7.org.nz/fhir/StructureDefinition/registration-status-code
Alias: $additional-authorization = http://hl7.org.nz/fhir/StructureDefinition/additional-authorization


Alias: $educational-qualification = http://hl7.org.nz/fhir/StructureDefinition/educational-qualification

Alias: $condition-on-practice = http://hl7.org.nz/fhir/StructureDefinition/condition-on-practice
Alias: $registration-initial-date = http://hl7.org.nz/fhir/StructureDefinition/registration-initial-date

Alias: $scope-of-practice = http://hl7.org.nz/fhir/StructureDefinition/scope-of-practice
Alias: $nzEthnicity = http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity


Profile:        HpiPractitioner
Parent:         Practitioner
Id:             HpiPractitioner
Title:          "HPI Practitioner"
Description:    "The practitioner exposed by the HPI. This is the person who delivers care - regardless of qualification."

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>HPI Practitioner profile</div>"
* ^text.status = #additional

* ^purpose = "Describe the Practitioner that will be returned by the HPI"

//elements that have been removed
* active 0..0
* telecom 0..0
* address 0..0
* photo 0..0

//-------- copied from commom


//top level  extensions
* extension contains 
    $nzEthnicity named nzEthnicity 0..6


* address only NzAddress

//must be one name with a family name
//todo - should we really insist on a family name? May not always be known...
* name 1..* MS
//* name.family 1..1 MS

//slice identifier to add the HPI as Must Support
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"

* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "system"

* identifier ^slicing.description = "The identifiers"
* identifier ^slicing.rules = #open
* identifier contains 
    HPI 1..1 MS 

* identifier[HPI].system = "https://standards.digital.health.nz/ns/hpi-provider-id" (exactly)
* identifier[HPI].use = #official (exactly)
* identifier[HPI].type 0..0
* identifier[HPI] ^short = "The currently active CPN (Common Person Name)"
* identifier[HPI] ^definition = "The HPI Person Identifier or CPN of the person that is currently in use.   It can be referred to as the ‘Live’ CPN or “live” HPI Person ID”. A person can only have one live CPN"



//--------

//top level  extensions
* extension contains 
    $death-date named death-date 0..1 and
    $educational-qualification named educational-qualification 0..*

* extension[death-date] ^short = "The date this person died"



* identifier.type 0..0
* identifier.system from https://standards.digital.health.nz/fhir/ValueSet/hpi-identifier-use-code
* name.use from https://standards.digital.health.nz/fhir/ValueSet/hpi-human-name-use-code

//slice identifier to add none or more dormant HPI as Must Support.
//The nzBase profile is sliced to define the current HPI, but only the PI system itself records others...
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #openAtEnd
* identifier contains 
    dormant 0..* MS

* identifier.system ^example.label = "HPI"
* identifier.system ^example.valueUri = "https://standards.digital.health.nz/ns/hpi-provider-id"
    
* identifier[dormant].system = "https://standards.digital.health.nz/ns/hpi-provider-id" (exactly)
* identifier[dormant].use = #old (exactly)
* identifier[dormant].type 0..0
* identifier[dormant] ^short = "CPN (Common Person Name) identifiers that have been deprecated for this Person"
* identifier[dormant] ^definition = "An HPI Person Identifier or CPN of the person that is no longer in use.   An HPI Person ID becomes dormant when it is discovered that 2 CPNs exist for the same person. The CPNs are linked, one becomes ‘live’ the other ‘dormant’."


//the gender is required by the HPI
* gender 1..1

//many extensions on qualification
* qualification.extension contains
    $registration-status-code named registration-status-code 0..1 and
    $additional-authorization named additional-authorization 0..*   and
    $scope-of-practice named scope-of-practice 0..* and
    $condition-on-practice named condition-on-practice 0..* and
    $registration-initial-date named registration-initial-date 0..1

* qualification.extension[registration-status-code] ^short = "Status of the registration, and the date it was set"
* qualification.extension[additional-authorization] ^short = "Additional things the person is authorized to do"
* qualification.extension[scope-of-practice] ^short = "The overall practice scope - eg Nurse Prescriber"
* qualification.extension[condition-on-practice] ^short = "Conditions that have been applied to the ability of the person to practice"
* qualification.extension[registration-initial-date] ^short = "The date that the person was originally registered"

//* qualification.identifier.system from https://standards.digital.health.nz/fhir/ValueSet/hpi-identifier-use-code

* qualification.code from https://standards.digital.health.nz/fhir/ValueSet/practitioner-registration-authority-code