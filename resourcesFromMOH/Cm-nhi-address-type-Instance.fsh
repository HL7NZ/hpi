Instance: Cm-nhi-address-type
InstanceOf: ConceptMap
Usage: #definition
* url = "https://standards.digital.health.nz/cm/nhi-address-type"
* version = "1.0"
* name = "Cm_nhi_address_type"
* title = "NHI Patient Address Type Mapping"
* status = #draft
* experimental = false
* date = "2020-02-24T00:00:00+13:00"
* publisher = "New Zealand Ministry of Health"
* description = "Translation from NHI Address Type to FHIR Address Type"
* purpose = "To translate from internal NHI Address Type to FHIR Address Type"
* sourceUri = "https://standards.digital.health.nz/vs/nhi-address-type"
* targetUri = "http://hl7.org/fhir/ValueSet/address-type"
* group.source = "https://standards.digital.health.nz/ns/nhi-address-type"
* group.sourceVersion = "1.0"
* group.target = "http://hl7.org/fhir/address-type"
* group.targetVersion = "4.0.1"
* group.element[0].code = #M
* group.element[=].target.code = #postal
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #R
* group.element[=].target.code = #physical
* group.element[=].target.equivalence = #equivalent