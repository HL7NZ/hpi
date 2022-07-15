Alias: $organisation-type-code = https://standards.digital.health.nz/ns/organisation-type-code
Alias: $alias-type-code = https://standards.digital.health.nz/ns/alias-type-code

Instance: GZZ956-B
InstanceOf: Organization
Description: "Example HPI Organization"
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIOrganization"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/established"
* extension.valuePeriod.start = "2018-05-20"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier[=].value = "GZZ956-B"
* identifier[=].assigner = Reference(Organization/G00001-G)
* identifier[+].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-nzbn"
* identifier[=].value = "9999999999041"
* identifier[=].assigner = Reference(Organization/MBIE)
* active = true
* type.coding.version = "1.1"
* type.coding = https://standards.digital.health.nz/ns/organisation-type-code#999 "Other"
* name = "Flat-Unit Address Org"
* alias = "Flat-Unit Address Org"
* alias.extension.url = "http://hl7.org.nz/fhir/StructureDefinition/alias-type"
* alias.extension.valueCodeableConcept.coding.version = "1.0"
* alias.extension.valueCodeableConcept.coding = https://standards.digital.health.nz/ns/alias-type-code#legal "Legal"
* alias.extension.valueCodeableConcept.text = "Legal"
* telecom.system = #phone
* telecom.value = "021 101010"
* telecom.use = #work
* telecom.rank = 1
* telecom.period.start = "1970-01-01"
