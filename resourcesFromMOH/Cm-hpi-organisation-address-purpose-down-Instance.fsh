Instance: Cm-hpi-organisation-address-purpose-down
InstanceOf: ConceptMap
Usage: #definition
* url = "https://standards.digital.health.nz/fhir/ConceptMap/hpi-organisation-address-purpose-down"
* version = "1.0"
* name = "Cm_hpi_organisation_address_purpose_down"
* title = "HPI Organisation Address Purpose Mapping"
* status = #draft
* experimental = false
* date = "2020-02-24T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "Translation from FHIR Address Use to HPI Address Purpose"
* purpose = "To translate from FHIR Address Use to internal HPI Address Purpose"
* sourceUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-organisation-address-use-code"
* targetUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-organisation-address-purpose"
* group.source = "https://standards.digital.health.nz/ns/hpi-address-use"
* group.sourceVersion = "2.0"
* group.target = "https://standards.digital.health.nz/ns/hpi-address-purpose"
* group.targetVersion = "1.0"
* group.element[0].code = #legal
* group.element[=].target.code = #LEGAL
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #billing
* group.element[=].target.code = #LEGAL
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #work
* group.element[=].target.code = #SERVICE
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #old
* group.element[=].target.code = #SERVICE
* group.element[=].target.equivalence = #equivalent