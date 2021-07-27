Instance: Cm-hpi-contact-type
InstanceOf: ConceptMap
Usage: #definition
* url = "https://standards.digital.health.nz/fhir/ConceptMap/hpi-contact-type"
* version = "1.0"
* name = "Cm_hpi_contact_type"
* title = "HPI Contact Type Mapping"
* status = #draft
* experimental = false
* date = "2020-02-24T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "Translation from HPI Contact Type to FHIR Contact Point System"
* purpose = "To translate from internal HPI Contact Type to FHIR Contact Point System"
* sourceUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-contact-type"
* targetUri = "http://hl7.org/fhir/ValueSet/contact-point-system"
* group.source = "https://standards.digital.health.nz/ns/hpi-contact-type"
* group.sourceVersion = "2.0"
* group.target = "http://hl7.org/fhir/contact-point-system"
* group.targetVersion = "4.0.1"
* group.element[0].code = #C
* group.element[=].target.code = #phone
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #E
* group.element[=].target.code = #email
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #F
* group.element[=].target.code = #fax
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #P
* group.element[=].target.code = #pager
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #S
* group.element[=].target.code = #sms
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #T
* group.element[=].target.code = #phone
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #U
* group.element[=].target.code = #url
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #O
* group.element[=].target.code = #other
* group.element[=].target.equivalence = #equivalent
* group.unmapped.mode = #fixed
* group.unmapped.code = #other