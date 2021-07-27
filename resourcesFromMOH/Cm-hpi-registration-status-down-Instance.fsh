Instance: Cm-hpi-registration-status-down
InstanceOf: ConceptMap
Usage: #definition
* url = "https://standards.digital.health.nz/fhir/ConceptMap/hpi-registration-status-down"
* version = "1.0"
* name = "Cm_hpi_registration_status_down"
* title = "HPI Registration Type Mapping Down Conversion"
* status = #draft
* experimental = true
* date = "2020-10-27T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "Translation from FHIR to Legacy HPI values"
* purpose = "To translate between HPI registration status codes"
* sourceUri = "https://standards.digital.health.nz/fhir/ValueSet/practitioner-registration-status-code"
* targetUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-registration-status"
* group.source = "https://standards.digital.health.nz/ns/practitioner-registration-status-code"
* group.sourceVersion = "2.0"
* group.target = "https://standards.digital.health.nz/ns/hpi-registration-status"
* group.targetVersion = "1.0"
* group.element[0].code = #current
* group.element[=].target.code = #C
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #inactive
* group.element[=].target.code = #I
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #removed
* group.element[=].target.code = #R
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #suspended
* group.element[=].target.code = #S
* group.element[=].target.equivalence = #equivalent