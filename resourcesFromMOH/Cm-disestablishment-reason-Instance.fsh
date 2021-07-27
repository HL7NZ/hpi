Instance: Cm-disestablishment-reason
InstanceOf: ConceptMap
Usage: #definition
* url = "https://standards.digital.health.nz/cm/disestablishment-reason"
* version = "1.0"
* name = "Cm_disestablishment_reason"
* title = "Disestablishment reason mapping"
* status = #active
* experimental = false
* date = "2021-03-02T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "Translated legacy disestablishment reason to disestablishment reason"
* sourceUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-disestablishment-reason|1.0"
* targetUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-disestablishment-reason|2.0"
* group.source = "https://standards.digital.health.nz/ns/hpi-disestablishment-reason"
* group.sourceVersion = "1.0"
* group.target = "https://standards.digital.health.nz/ns/hpi-disestablishment-reason"
* group.targetVersion = "2.0"
* group.element[0].code = #BANKRUPT
* group.element[=].target.code = #liquidation
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #OWNERSHIP
* group.element[=].target.code = #ownership
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #NLO
* group.element[=].target.code = #nlo
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #STRUCK-OFF
* group.element[=].target.code = #removed
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #OTHER
* group.element[=].target.code = #other
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #UNKN
* group.element[=].target.code = #unknown
* group.element[=].target.equivalence = #equivalent
* group.unmapped.mode = #fixed
* group.unmapped.code = #unknown