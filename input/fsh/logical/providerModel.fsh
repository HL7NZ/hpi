Logical:        ProviderModel
Title:          "Healthcare provider"
Description:    "A person who delivers care"

* name 0..1 HumanName "Name of the practitioner"
* HPI-CPN 1..1 Identifier "The HPI Common Person Number"
* dormantCPN 0..* Identifier "Previously assigned CPN identifiers"
* gender 0..1 code "Provider gender" 
* gender from http://hl7.org/fhir/ValueSet/administrative-gender
* birthDate 0..1 date "Date of Birth"
* deathDate 0..1 date "Date of Death"
* communication 0..* CodeableConcept "Language/s spoken by the provider"
* communication from http://hl7.org/fhir/ValueSet/languages
* ethnicity 0..6 CodeableConcept "Ethnicity of the provider"
* ethnicity from https://standards.digital.health.nz/fhir/ValueSet/ethnic-group-level-4-code
* registration 0..* BackboneElement "Professional registration"
  * status 1..1 CodeableConcept "The status of the registration"
  * status from https://standards.digital.health.nz/fhir/ValueSet/practitioner-registration-status-code
  * identifier 0..* Identifier "Any identifiers"
  * code 1..1 CodeableConcept "The code representing the qualification itself"
  * period 0..* Period "The period over which the registration is active"
  * issuer 0..1 Reference(Organization) "The organization that issued the registration"
  * initialDate 0..1 date "The date that this registration was first recorded"
* additionalAuthorization 0..* BackboneElement "Additional Authorizations for this provider"
  * code 0..1 CodeableConcept "The code that represents the authorization"
  * code from https://standards.digital.health.nz/fhir/ValueSet/practitioner-additional-authorisation-code
  * period 0..* Period "The period over which the authorization is active"
* scopeOfPractice 0..* BackboneElement "Scope of practice for this provider"
  * code 0..1 CodeableConcept "The code that represents the Scope of practice"
  * code from https://standards.digital.health.nz/fhir/ValueSet/practitioner-scope-of-practice-code
  * description 0..1 string "textual description"
  * period 0..* Period "The period over which the Scope of practice is active"
* conditionOnPractice 0..* BackboneElement "Conditions that affect what this provider can do"
  * description 0..1 string "textual description"
  * period 0..* Period "The period over which the condition is active"