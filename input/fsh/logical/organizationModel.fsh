Logical:        OrganizationModel
Title:          "An Organization involved in healthcare"
Description:    "An Organization involved in healthcare"

* name 0..1 string "The name of the Organization"
* alias 0..* BackboneElement "Other names by which this Organization is known"
  * name 1..1 string "The alternative name"
  * type 0..1 CodeableConcept "The type of alias - eg locally used name"
  * type from https://standards.digital.health.nz/fhir/ValueSet/organization-alias-type-code
* hpiOrgId 1..1 Identifier "The HPI number assigned to the Organization"
* nzbn 0..1 Identifier "New Zealand Business Number"
* dormantOrgId 0..* Identifier "Previously assigned identifiers, no longer used"
* otherIdentifiers 0..* Identifier "Other identifiers that may have been assigned"

* active 0..1 boolean "True if the Organization is currently in operation"

* contactDetails 0..* ContactPoint "How to contact the organization (by a human)"

* electronicContactDetails 0..* Reference(EndpointModel) "Technical contacts"

* partOf 0..1 Reference(OrganizationModel) "If this organization is part of a larger one"
* established 0..1 Period "The period over which the organization has been / is in operation"
