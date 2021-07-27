Instance: Cm-hpi-contact-usage
InstanceOf: ConceptMap
Usage: #definition
* url = "https://standards.digital.health.nz/fhir/ConceptMap/hpi-contact-usage"
* version = "1.0"
* name = "Cm_hpi_contact_usage"
* title = "HPI Contact Usage Mapping"
* status = #draft
* experimental = false
* date = "2020-02-24T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "Translation from HPI Contact Usage to FHIR Contact Point Use"
* purpose = "To translate from internal HPI Contact Usage to FHIR Contact Point Use"
* sourceUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-contact-usage"
* targetUri = "http://hl7.org/fhir/ValueSet/contact-point-use"
* group.source = "https://standards.digital.health.nz/ns/hpi-contact-usage"
* group.sourceVersion = "2.0"
* group.target = "http://hl7.org/fhir/contact-point-use"
* group.targetVersion = "4.0.1"
* group.element[0].code = #B
* group.element[=].target.code = #work
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #B-OLD
* group.element[=].target.code = #old
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #T
* group.element[=].target.code = #temp
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #M
* group.element[=].target.code = #mobile
* group.element[=].target.equivalence = #equivalent