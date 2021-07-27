Instance: Cm-hpi-facility-address-purpose-down
InstanceOf: ConceptMap
Usage: #definition
* url = "https://standards.digital.health.nz/fhir/ConceptMap/hpi-facility-address-purpose-down"
* version = "1.0"
* name = "Cm_hpi_facility_address_purpose_down"
* title = "HPI Facility Address Purpose Mapping"
* status = #draft
* experimental = false
* date = "2020-02-24T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "Translation from FHIR Address Use to HPI Address Purpose"
* purpose = "To translate from FHIR Address Use to internal HPI Address Purpose"
* sourceUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-location-address-use-code"
* targetUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-facility-address-purpose"
* group.source = "https://standards.digital.health.nz/ns/hpi-address-use"
* group.sourceVersion = "2.0"
* group.target = "https://standards.digital.health.nz/ns/hpi-address-purpose"
* group.targetVersion = "1.0"
* group.element[0].code = #work
* group.element[=].target.code = #BUSINESS
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #old
* group.element[=].target.code = #BUSINESS
* group.element[=].target.equivalence = #equivalent