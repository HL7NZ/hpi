Instance: Cm-gender-to-r4
InstanceOf: ConceptMap
Usage: #definition
* url = "https://standards.digital.health.nz/fhir/ConceptMap/gender-to-r4"
* version = "1.0"
* name = "Cm_gender_to_r4"
* title = "Gender Mapping (to R4)"
* status = #draft
* experimental = false
* date = "2020-02-24T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "Translation from HPI/NHI Gender Code to FHIR Administrative Gender"
* purpose = "To translate from internal Gender Code to FHIR Administrative Gender"
* sourceUri = "https://standards.digital.health.nz/fhir/ValueSet/gender-code"
* targetUri = "http://hl7.org/fhir/ValueSet/administrative-gender"
* group.source = "https://standards.digital.health.nz/ns/gender-code"
* group.sourceVersion = "2.0"
* group.target = "http://hl7.org/fhir/administrative-gender"
* group.targetVersion = "4.0.1"
* group.element[0].code = #F
* group.element[=].target.code = #female
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #M
* group.element[=].target.code = #male
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #U
* group.element[=].target.code = #unknown
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #O
* group.element[=].target.code = #other
* group.element[=].target.equivalence = #equivalent
* group.unmapped.mode = #fixed
* group.unmapped.code = #other