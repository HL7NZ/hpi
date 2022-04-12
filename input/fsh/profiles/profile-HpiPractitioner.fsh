
//Aliases for extensions
Alias: $death-date = http://hl7.org.nz/fhir/StructureDefinition/death-date
Alias: $registration-status-code = http://hl7.org.nz/fhir/StructureDefinition/registration-status-code
Alias: $additional-authorisation = http://hl7.org.nz/fhir/StructureDefinition/additional-authorisation


Alias: $educational-qualification = http://hl7.org.nz/fhir/StructureDefinition/educational-qualification

Alias: $condition-on-practice = http://hl7.org.nz/fhir/StructureDefinition/condition-on-practice
Alias: $registration-initial-date = http://hl7.org.nz/fhir/StructureDefinition/registration-initial-date

Alias: $scope-of-practice = http://hl7.org.nz/fhir/StructureDefinition/scope-of-practice
Alias: $nzEthnicity = http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity


Profile:        HpiPractitioner
Parent:         Practitioner
Id:             HPIPractitioner
Title:          "HPI Practitioner"
Description:    "The practitioner exposed by the HPI. This is the person who delivers healthcare or healthcare related services."

* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitioner"

* ^text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>HPI Practitioner profile</div>"
* ^text.status = #additional

* ^purpose = "Describe the Practitioner that will be returned by the HPI"

//elements that have been removed
* active 0..0
* telecom 0..0
* address 0..0
* photo 0..0


//top level  extensions
//* extension contains 
//    $nzEthnicity named nzEthnicity 0..6

//top level  extensions
* extension contains 
    $death-date named death-date 0..1 and
    $nzEthnicity named nzEthnicity 0..6 and 
    $educational-qualification named educational-qualification 0..1

* extension[death-date] ^short = "The date this person died"


* address only NzAddress

//must be one name with a family name
// name 1..* Will use the standard name cardnality
* name.use from https://nzhts.digital.health.nz/fhir/ValueSet/hpi-human-name-use-code
* name.use ^short = "usual | official | old"
* name.text 0..0

//---------- identifier slicing -----------
//slice identifier to add the HPI as Must Support

* identifier.type 0..0
* identifier.system from https://nzhts.digital.health.nz/fhir/ValueSet/hpi-identifier-use-code

* identifier.use from $identifier-use-vs
* identifier.use ^short = "official | old"

//* identifier.system ^example.label = "HPI"
//* identifier.system ^example.valueUri = "https://standards.digital.health.nz/ns/hpi-provider-id"

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"

* identifier ^slicing.discriminator[1].type = #value
* identifier ^slicing.discriminator[1].path = "system"

* identifier ^slicing.description = "The identifiers"
* identifier ^slicing.rules = #openAtEnd

* identifier contains 
    HPI 0..1 MS and 
    dormant 0..* MS

* identifier[HPI].system = "https://standards.digital.health.nz/ns/hpi-person-id" (exactly)
* identifier[HPI].use = #official (exactly)
* identifier[HPI].use ^short = "fixed to official"

* identifier[HPI].type 0..0
* identifier[HPI] ^short = "The currently active CPN (Common Person Name)"
* identifier[HPI] ^definition = "The HPI Person Identifier or CPN of the person that is currently in use.   It can be referred to as the ‘Live’ CPN or “live” HPI Person ID”. A person can only have one live CPN"


* identifier[dormant].system = "https://standards.digital.health.nz/ns/hpi-provider-id" (exactly)
* identifier[dormant].use = #old (exactly)
* identifier[dormant].use ^short = "fixed to old"

* identifier[dormant].type 0..0
* identifier[dormant] ^short = "CPN (Common Person Name) identifiers that have been deprecated for this Person"
* identifier[dormant] ^definition = "An HPI Person Identifier or CPN of the person that is no longer in use.   An HPI Person ID becomes dormant when it is discovered that 2 CPNs exist for the same person. The CPNs are linked, one becomes ‘live’ the other ‘dormant’."


//-------- end of identifier slicing --------

//the gender is required by the HPI
//* gender 1..1

//many extensions on qualification
* qualification.extension contains
    $registration-status-code named registration-status-code 0..1 and
    $additional-authorisation named additional-authorisation 0..*   and
    $scope-of-practice named scope-of-practice 0..* and
    $condition-on-practice named condition-on-practice 0..* and
    $registration-initial-date named registration-initial-date 0..1
    

* qualification.extension[registration-status-code] ^short = "Status of the registration, and the date it was set"
* qualification.extension[additional-authorisation] ^short = "Additional things the person is authorized to do"
* qualification.extension[scope-of-practice] ^short = "The overall practice scope - eg Nurse Prescriber"
* qualification.extension[condition-on-practice] ^short = "Conditions that have been applied to the ability of the person to practice"
* qualification.extension[registration-initial-date] ^short = "The date that the person was originally registered"
* qualification.id 0..0
* qualification.identifier ^short = "The practitioner's identifier issued by the Responsible Authority eg medical council number, nursing council number"
* qualification.code ^short = "Coded representation of the Responsible Authority that issues the registration"
* qualification.issuer ^short = "The HPI Organisation ID of the Responsible Authority that issues the registration"
* qualification.period ^short = "The period of the annual practicing certificate issued by the  Responsible Authority"
* qualification.scope-of-practice ^short = "the health services a practitioner is authorised to perform eg Nurse Practitioner"

//* qualification.identifier.system from https://standards.digital.health.nz/fhir/ValueSet/hpi-identifier-use-code

* qualification.code from https://nzhts.digital.health.nz/fhir/ValueSet/practitioner-registration-authority-code
