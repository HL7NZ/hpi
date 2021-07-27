Instance: Cm-hpi-organisation-address-purpose
InstanceOf: ConceptMap
Usage: #definition
* url = "https://standards.digital.health.nz/fhir/ConceptMap/hpi-organisation-address-purpose"
* version = "1.0"
* name = "Cm_hpi_organisation_address_purpose"
* title = "HPI Organisation Address Purpose Mapping"
* status = #draft
* experimental = false
* date = "2020-02-24T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "Translation from HPI Address Purpose to FHIR Address Use"
* purpose = "To translate from internal HPI Address Purpose to FHIR Address Use"
* sourceUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-organisation-address-purpose"
* targetUri = "https://standards.digital.health.nz/fhir/ValueSet/hpi-organisation-address-use-code"
* group.source = "https://standards.digital.health.nz/ns/hpi-address-purpose"
* group.sourceVersion = "1.0"
* group.target = "https://standards.digital.health.nz/ns/hpi-address-use"
* group.targetVersion = "2.0"
* group.element[0].code = #LEGAL
* group.element[=].target.code = #legal
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #SERVICE
* group.element[=].target.code = #work
* group.element[=].target.equivalence = #equivalent