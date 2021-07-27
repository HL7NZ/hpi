Instance: Cm-hpi-facility-name-qualifier-down
InstanceOf: ConceptMap
Usage: #definition
* url = "https://standards.digital.health.nz/fhir/ConceptMap/hpi-facility-name-qualifier-down"
* version = "1.0"
* name = "Cm_hpi_facility_name_qualifier_down"
* title = "HPI Facility Name Qualifier Mapping Down"
* status = #draft
* experimental = false
* date = "2020-02-24T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "Translation from FHIR Location Alias Type to HPI Name Qualifier"
* purpose = "To translate from FHIR Location Alias Type to internal HPI Name Qualifier"
* sourceUri = "https://standards.digital.health.nz/fhir/ValueSet/location-alias-type-code"
* targetUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-facility-name-qualifier"
* group.source = "https://standards.digital.health.nz/ns/alias-type-code"
* group.sourceVersion = "1.0"
* group.target = "https://standards.digital.health.nz/ns/hpi-name-qualifier"
* group.targetVersion = "2.0"
* group.element[0].code = #aka
* group.element[=].target.code = #AKA
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #old
* group.element[=].target.code = #FORMER
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #maori
* group.element[=].target.code = #MAORI
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #short
* group.element[=].target.code = #SHORT
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #current
* group.element[=].target.code = #CURRENT
* group.element[=].target.equivalence = #equivalent