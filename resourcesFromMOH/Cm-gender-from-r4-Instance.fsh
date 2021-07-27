Instance: Cm-gender-from-r4
InstanceOf: ConceptMap
Usage: #definition
* url = "https://standards.digital.health.nz/fhir/ConceptMap/gender-from-r4"
* version = "1.0"
* name = "Cm_gender_from_r4"
* title = "Gender Mapping (from R4)"
* status = #draft
* experimental = false
* date = "2020-02-24T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "Translation from FHIR Administrative Gender to HPI/NHI Gender Code"
* purpose = "To translate from FHIR Administrative Gender to internal Gender Code "
* sourceUri = "http://hl7.org/fhir/ValueSet/administrative-gender"
* targetUri = "https://standards.digital.health.nz/fhir/ValueSet/gender-code"
* group.source = "http://hl7.org/fhir/administrative-gender"
* group.sourceVersion = "4.0.1"
* group.target = "https://standards.digital.health.nz/ns/gender-code"
* group.targetVersion = "2.0"
* group.element[0].code = #female
* group.element[=].target.code = #F
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #male
* group.element[=].target.code = #M
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #unknown
* group.element[=].target.code = #U
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #other
* group.element[=].target.code = #O
* group.element[=].target.equivalence = #equivalent