Instance: Cm-hpi-contact-usage-down
InstanceOf: ConceptMap
Usage: #definition
* url = "https://standards.digital.health.nz/fhir/ConceptMap/hpi-contact-usage-down"
* version = "1.0"
* name = "Cm_hpi_contact_usage_down"
* title = "HPI Contact Usage Mapping"
* status = #draft
* experimental = false
* date = "2020-02-24T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "Translation from FHIR Contact Point Use to HPI Contact Usage"
* purpose = "To translate from FHIR Contact Point Use to internal HPI Contact Usage"
* sourceUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-contact-point-use-code"
* targetUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-contact-usage"
* group.source = "http://hl7.org/fhir/contact-point-use"
* group.sourceVersion = "4.0.1"
* group.target = "https://standards.digital.health.nz/ns/hpi-contact-usage"
* group.targetVersion = "2.0"
* group.element[0].code = #work
* group.element[=].target.code = #B
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #temp
* group.element[=].target.code = #T
* group.element[=].target.equivalence = #equivalent