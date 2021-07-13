Logical:        FacilityModel
Title:          "A facility involved in healthcare"
Description:    "An actual physical location. Represented by a Location model in FHIR"

* name 1..1 string "The name of the facility"
* description 0..1 string "A longer description of the facility"
* alias 0..* BackboneElement "Other names by which this facility is known"
  * name 1..1 string "The alternative name"
  * type 0..1 CodeableConcept "The type of alias - eg locally used name"
  * type from https://standards.digital.health.nz/fhir/ValueSet/location-alias-type-code
* hpiFacilityId 1..1 Identifier "The identifier assigned by the HPI to this facility"
* dormantFacilityId 0..* Identifier "Previously assigned identifiers, no longer used"
* otherIdentifiers 0..* Identifier "Other identifiers that may have been assigned"
* status 1..1 code "The current status of this facility"
* typeOfFunction 0..1 CodeableConcept "The kinds of function that can be perfromed at this facility"
* typeOfFunction from https://standards.digital.health.nz/fhir/ValueSet/location-type-code
* contactDetails 0..* ContactPoint "How to contact the facility (by a human)"
* electronicContactDetails 0..* Reference(EndpointModel) "Technical contacts"
* address 0..1 Address "Where the facility is located"
* managingOrganization 0..1 Reference(OrganizationModel) "The organization responsible for this facility"
* partOf 0..1 Reference(FacilityModel) "If this facility is part of a larger one (eg a ward in a hospital"
* established 0..1 Period "The period over which the facility has been / is in operation"
* DHB 0..1 CodeableConcept "The DHB whose catchment area this facility is in"
* DHB from https://standards.digital.health.nz/fhir/ValueSet/dhb-code
* geocode 0..1 BackboneElement "The geocode for this facility. Uses the NZ datum (reference point)"
  * latitude 0..1 decimal "Latitude"
  * longitude 0..1 decimal "Longitude"

