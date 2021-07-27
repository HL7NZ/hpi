Instance: Cm-hpi-organistaion-type
InstanceOf: ConceptMap
Usage: #definition
* url = "https://standards.digital.health.nz/fhir/ConceptMap/hpi-organisation-type"
* version = "1.0"
* name = "Cm_hpi_organistaion_type"
* title = "HPI Organisation Type Mapping"
* status = #draft
* experimental = false
* date = "2020-02-24T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "Translation from HPI Organisation Type to FHIR Organisation Type"
* purpose = "To translate from 1.0 HPI Organisation Type to FHIR Organisation Type"
* sourceUri = "https://standards.digital.health.nz/fhir/ValueSet/organisation-type-code|1.0"
* targetUri = "https://standards.digital.health.nz/fhir/ValueSet/organisation-type-code|1.1"
* group.source = "https://standards.digital.health.nz/ns/organisation-type-code"
* group.sourceVersion = "1.0"
* group.target = "https://standards.digital.health.nz/ns/organisation-type-code"
* group.targetVersion = "1.1"
* group.element[0].code = #001
* group.element[=].target.code = #001
* group.element[=].target.equivalence = #equal
* group.element[+].code = #003
* group.element[=].target.code = #003
* group.element[=].target.equivalence = #equal
* group.element[+].code = #006
* group.element[=].target.code = #006
* group.element[=].target.equivalence = #equal
* group.element[+].code = #007
* group.element[=].target.code = #007
* group.element[=].target.equivalence = #equal
* group.element[+].code = #008
* group.element[=].target.code = #008
* group.element[=].target.equivalence = #equal
* group.element[+].code = #009
* group.element[=].target.code = #009
* group.element[=].target.equivalence = #equal
* group.element[+].code = #999
* group.element[=].target.code = #999
* group.element[=].target.equivalence = #equivalent
* group.unmapped.mode = #fixed
* group.unmapped.code = #999