Alias: $organisation-type-code = https://standards.digital.health.nz/ns/organisation-type-code
Alias: $alias-type-code = https://standards.digital.health.nz/ns/alias-type-code

Instance: G00001-G
InstanceOf: Organization
Description: "Example HPI Organization"
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HpiOrganization"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/organization-established"
* extension.valuePeriod.start = "1900-01-01"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-organization-id"
* identifier.value = "G00001-G"
* identifier.assigner = Reference(G00001-G)
* active = true
* type.coding.version = "1.1"
* type.coding = https://standards.digital.health.nz/ns/organisation-type-code#999 "Other"
* name = "Ministry of Health"
* alias = "Ministry of Health"
* alias.extension.url = "http://hl7.org.nz/fhir/StructureDefinition/alias-type"
* alias.extension.valueCodeableConcept.coding.version = "1.0"
* alias.extension.valueCodeableConcept.coding = https://standards.digital.health.nz/ns/alias-type-code#legal "Legal"
* alias.extension.valueCodeableConcept.text = "Legal"
* telecom[0].system = #email
* telecom[=].value = "info@health.govt.nz"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[=].period.start = "2010-01-01"
* telecom[+].system = #phone
* telecom[=].value = "33 2546124"
* telecom[=].use = #work
* telecom[=].rank = 2


Instance: G00004-B
InstanceOf: Organization
Description: "Example HPI Organization"
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HpiOrganization"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/organization-established"
* extension.valuePeriod.start = "1989-02-05"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-organization-id"
* identifier.value = "G00004-B"
* identifier.assigner = Reference(Organization/G00001-G)
* active = true
* type.coding.version = "1.1"
* type.coding = https://standards.digital.health.nz/ns/organisation-type-code#999 "Other"
* name = "Medical Council of New Zealand"
* alias = "Medical Council of New Zealand"
* alias.extension.url = "http://hl7.org.nz/fhir/StructureDefinition/alias-type"
* alias.extension.valueCodeableConcept.coding.version = "1.0"
* alias.extension.valueCodeableConcept.coding = https://standards.digital.health.nz/ns/alias-type-code#legal "Legal"
* alias.extension.valueCodeableConcept.text = "Legal"
* telecom[0].system = #email
* telecom[=].value = "updgrade@email.co.nz"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[=].period.start = "2013-01-03"
* telecom[+].system = #phone
* telecom[=].value = "21 2546123"
* telecom[=].use = #work
* telecom[=].rank = 2
