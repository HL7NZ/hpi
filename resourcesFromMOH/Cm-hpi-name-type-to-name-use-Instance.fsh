Instance: Cm-hpi-name-type-to-name-use
InstanceOf: ConceptMap
Usage: #definition
* url = "https://standards.digital.health.nz/cm/hpi-name-type-to-name-use"
* version = "1.0"
* name = "Cm_hpi_name_type_to_name_use"
* title = "HPI Name type to Name Use Mapping"
* status = #draft
* experimental = false
* date = "2020-02-24T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "Translation from HPI Name Type to FHIR Name Use"
* sourceUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-name-type"
* targetUri = "http://hl7.org/fhir/ValueSet/name-use"
* group.source = "https://standards.digital.health.nz/ns/hpi-name-type"
* group.sourceVersion = "2.0"
* group.target = "http://hl7.org/fhir/name-use"
* group.targetVersion = "4.0.1"
* group.element[0].code = #O
* group.element[=].target.code = #official
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #A
* group.element[=].target.code = #usual
* group.element[=].target.equivalence = #equivalent