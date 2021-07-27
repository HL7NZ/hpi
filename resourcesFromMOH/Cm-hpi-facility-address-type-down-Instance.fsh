Instance: Cm-hpi-facility-address-type-down
InstanceOf: ConceptMap
Usage: #definition
* url = "https://standards.digital.health.nz/fhir/ConceptMap/hpi-facility-address-type-down"
* version = "1.0"
* name = "Cm_hpi_facility_address_type_down"
* title = "HPI Facility Address Type Mapping"
* status = #draft
* experimental = false
* date = "2020-02-24T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "Translation from FHIR Address Type to HPI Address Type"
* purpose = "To translate from FHIR Address Type to internal HPI Address Type"
* sourceUri = "http://hl7.org/fhir/ValueSet/address-type"
* targetUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-facility-address-type"
* group.source = "http://hl7.org/fhir/address-type"
* group.sourceVersion = "4.0.1"
* group.target = "https://standards.digital.health.nz/ns/hpi-address-type"
* group.targetVersion = "2.0"
* group.element[0].code = #postal
* group.element[=].target.code = #M
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #physical
* group.element[=].target.code = #S
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #both
* group.element[=].target.code = #S
* group.element[=].target.equivalence = #equivalent