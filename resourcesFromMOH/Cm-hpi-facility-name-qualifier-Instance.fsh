Instance: Cm-hpi-facility-name-qualifier
InstanceOf: ConceptMap
Usage: #definition
* url = "https://standards.digital.health.nz/fhir/ConceptMap/hpi-facility-name-qualifier"
* version = "1.0"
* name = "Cm_hpi_facility_name_qualifier"
* title = "HPI Facility Name Qualifier Mapping"
* status = #draft
* experimental = false
* date = "2020-02-24T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "Translation from HPI Name Qualifier to FHIR Location Alias Type"
* purpose = "To translate from internal HPI Name Qualifier to FHIR Location Alias Type"
* sourceUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-facility-name-qualifier"
* targetUri = "https://standards.digital.health.nz/fhir/ValueSet/location-alias-type-code"
* group.source = "https://standards.digital.health.nz/ns/hpi-name-qualifier"
* group.sourceVersion = "2.0"
* group.target = "https://standards.digital.health.nz/ns/alias-type-code"
* group.targetVersion = "1.0"
* group.element[0].code = #AKA
* group.element[=].target.code = #aka
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #FORMER
* group.element[=].target.code = #old
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #MAORI
* group.element[=].target.code = #maori
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #SHORT
* group.element[=].target.code = #short
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #CURRENT
* group.element[=].target.code = #current
* group.element[=].target.equivalence = #equivalent