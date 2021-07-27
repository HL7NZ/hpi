Instance: Cm-hpi-registration-status
InstanceOf: ConceptMap
Usage: #definition
* url = "https://standards.digital.health.nz/fhir/ConceptMap/hpi-registration-status"
* version = "1.0"
* name = "Cm_hpi_registration_status"
* title = "HPI Registration Type Mapping"
* status = #draft
* experimental = true
* date = "2020-10-27T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "Translation from legacy HPI to FHIR"
* purpose = "To translate between HPI registration status codes"
* sourceUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-registration-status"
* targetUri = "https://standards.digital.health.nz/fhir/ValueSet/practitioner-registration-status-code"
* group.source = "https://standards.digital.health.nz/ns/hpi-registration-status"
* group.sourceVersion = "1.0"
* group.target = "https://standards.digital.health.nz/ns/practitioner-registration-status-code"
* group.targetVersion = "2.0"
* group.element[0].code = #C
* group.element[=].target.code = #current
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #I
* group.element[=].target.code = #inactive
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #R
* group.element[=].target.code = #removed
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #S
* group.element[=].target.code = #suspended
* group.element[=].target.equivalence = #equivalent