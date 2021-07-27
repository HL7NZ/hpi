Instance: Cm-hpi-name-use-to-name-type
InstanceOf: ConceptMap
Usage: #definition
* url = "https://standards.digital.health.nz/cm/hpi-name-use-to-name-type"
* version = "1.0"
* name = "Cm_hpi_name_use_to_name_type"
* title = "HPI Name Use to Name Type Mapping"
* status = #draft
* experimental = false
* date = "2020-02-24T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "Translation from FHIR Name use to HPI Name Type"
* sourceUri = "http://hl7.org/fhir/ValueSet/name-use"
* targetUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-name-type"
* group.source = "http://hl7.org/fhir/name-use"
* group.sourceVersion = "4.0.1"
* group.target = "https://standards.digital.health.nz/ns/hpi-name-type"
* group.targetVersion = "2.0"
* group.element[0].code = #official
* group.element[=].target.code = #O
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #usual
* group.element[=].target.code = #A
* group.element[=].target.equivalence = #equivalent
* group.unmapped.mode = #fixed
* group.unmapped.code = #A