Logical:        ProviderRoleModel
Title:          "Provider role"
Description:    "The role of a provider in a care delivery setting"
Parent:         Element

* provider 1..1 ProviderModel "The provider"
* organization 0..1 OrganizationModel "The organization that the provide is working for"
* facility 0..1 FacilityModel "The facility where the provider provides care"
* code 0..1 CodeableConcept "The role that this provider may perform for the Organization"
* code from https://standards.digital.health.nz/fhir/ValueSet/practitioner-role-code
* status 0..1 BackboneElement "The current status of this role"
  * active 0..1 boolean "True if the role is currently active"
  * statusReason 0..1 CodeableConcept "The reason for the role being in this status"
  * statusReason from https://standards.digital.health.nz/fhir/ValueSet/hpi-practitioner-role-status-reason-code
* contactDetails 0..* ContactPoint "How to contact the provider"
* period 0..1 Period "The period over which the provider is working for the organization"
* identifier 0..* Identifier "Identifiers assigned to this role"

* creator 0..1 BackboneElement "The person who created or updated this resource"
  * person 1..1 ProviderModel "The person making the change"
  * organization 0..1 OrganizationModel "The organization they are working on behalf on"
