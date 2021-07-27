Instance: Cm-hpi-contact-type-down
InstanceOf: ConceptMap
Usage: #definition
* url = "https://standards.digital.health.nz/fhir/ConceptMap/hpi-contact-type-down"
* version = "1.0"
* name = "Cm_hpi_contact_type_down"
* title = "HPI Contact Type Mapping"
* status = #draft
* experimental = false
* date = "2020-02-24T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "Translation from FHIR Contact Point System to HPI Contact Type"
* purpose = "To translate from FHIR Contact Point System to internal HPI Contact Type"
* sourceUri = "http://hl7.org/fhir/ValueSet/contact-point-system"
* targetUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-contact-type"
* group.source = "http://hl7.org/fhir/contact-point-system"
* group.sourceVersion = "4.0.1"
* group.target = "https://standards.digital.health.nz/ns/hpi-contact-type"
* group.targetVersion = "2.0"
* group.element[0].code = #email
* group.element[=].target.code = #E
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #fax
* group.element[=].target.code = #F
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #pager
* group.element[=].target.code = #P
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #sms
* group.element[=].target.code = #S
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #phone
* group.element[=].target.code = #T
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #url
* group.element[=].target.code = #U
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #other
* group.element[=].target.code = #M
* group.element[=].target.equivalence = #equivalent