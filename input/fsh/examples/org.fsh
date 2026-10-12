Instance: GZZ956-B
InstanceOf: Organization
Description: "Example HPI Organization"
Usage: #example
* meta.versionId = "8910"
* meta.lastUpdated = "2022-04-05T15:04:16.000+12:00"
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
* alias.extension.valueCodeableConcept.coding.version = "1.0.0"
* alias.extension.valueCodeableConcept.coding = https://standards.digital.health.nz/ns/alias-type-code#legal "Legal"
* alias.extension.valueCodeableConcept.text = "Legal"
* telecom.system = #phone
* telecom.value = "021 101010"
* telecom.use = #work
* telecom.rank = 1
* telecom.period.start = "1970-01-01"


Instance: GZZ991-D
InstanceOf: Organization
Description: "Example HPI Organization 'partof'"
Usage: #example
* meta.versionId = "8961"
* meta.lastUpdated = "2022-04-05T15:04:28.000+12:00"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIOrganization"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/established"
* extension.valuePeriod.start = "2009-09-09"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier[=].value = "GZZ991-D"
* identifier[=].assigner = Reference(Organization/G00001-G)
* identifier[+].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/nzhis-agency-id"
* identifier[=].value = "9006"
* identifier[=].assigner = Reference(Organization/G00001-G)
* identifier[+].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-nzbn"
* identifier[=].value = "9999999999009"
* identifier[=].assigner = Reference(Organization/MBIE)
* active = true
* type.coding.version = "1.1"
* type.coding = https://standards.digital.health.nz/ns/organisation-type-code#008 "Education Institutions"
* name = "Second Name"
* alias[0] = "Wha Name"
* alias[+] = "Third Name"
* alias[+] = "Second Name"
* alias[+] = "Multiple Names Org"
* alias[0].extension.url = "http://hl7.org.nz/fhir/StructureDefinition/alias-type"
* alias[=].extension.valueCodeableConcept.coding.version = "1.0.0"
* alias[=].extension.valueCodeableConcept.coding = https://standards.digital.health.nz/ns/alias-type-code#maori "Māori"
* alias[=].extension.valueCodeableConcept.text = "Māori"
* alias[+].extension.url = "http://hl7.org.nz/fhir/StructureDefinition/alias-type"
* alias[=].extension.valueCodeableConcept.coding.version = "1.0.0"
* alias[=].extension.valueCodeableConcept.coding = https://standards.digital.health.nz/ns/alias-type-code#aka "Aka"
* alias[=].extension.valueCodeableConcept.text = "Aka"
* alias[+].extension.url = "http://hl7.org.nz/fhir/StructureDefinition/alias-type"
* alias[=].extension.valueCodeableConcept.coding.version = "1.0.0"
* alias[=].extension.valueCodeableConcept.coding = https://standards.digital.health.nz/ns/alias-type-code#trade-as "Trading as"
* alias[=].extension.valueCodeableConcept.text = "Trading as"
* alias[+].extension.url = "http://hl7.org.nz/fhir/StructureDefinition/alias-type"
* alias[=].extension.valueCodeableConcept.coding.version = "1.0.0"
* alias[=].extension.valueCodeableConcept.coding = https://standards.digital.health.nz/ns/alias-type-code#legal "Legal"
* alias[=].extension.valueCodeableConcept.text = "Legal"
* telecom[0].system = #email
* telecom[=].value = "ghi@email.com"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[=].period.start = "2019-11-11"
* telecom[+].system = #phone
* telecom[=].value = "027 123555"
* telecom[=].use = #work
* telecom[=].rank = 2
* telecom[=].period.start = "2019-11-11"
* partOf = Reference(Organization/GZZ836-C) "Multiple sub-organisation"


Instance: G00001-G
InstanceOf: Organization
Description: "Example HPI root Organization"
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIOrganization"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier[=].value = "G00001-G"
* active = true
* name = "HPI Root Organization"


Instance: GZZ998-G
InstanceOf: Organization
Description: "Example HPI Organization for PractitionerRole references"
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIOrganization"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier[=].value = "GZZ998-G"
* identifier[=].assigner = Reference(Organization/G00001-G)
* active = true
* name = "Referenced PractitionerRole Organization"


Instance: MBIE
InstanceOf: Organization
Description: "Example MBIE Organization"
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIOrganization"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier[=].value = "MBIE"
* active = true
* name = "Ministry of Business, Innovation and Employment"


Instance: G00000-E
InstanceOf: Organization
Description: "Example HPI Organization"
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIOrganization"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier[=].value = "G00000-E"
* active = true
* name = "Reference Organization G00000-E"


Instance: G00008-K
InstanceOf: Organization
Description: "Example HPI Organization"
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIOrganization"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier[=].value = "G00008-K"
* active = true
* name = "Reference Organization G00008-K"


Instance: G00009-A
InstanceOf: Organization
Description: "Example HPI Organization"
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIOrganization"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier[=].value = "G00009-A"
* active = true
* name = "Reference Organization G00009-A"


Instance: GZZ836-C
InstanceOf: Organization
Description: "Example HPI Organization"
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIOrganization"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier[=].value = "GZZ836-C"
* active = true
* name = "Reference Organization GZZ836-C"


Instance: GZZ908-B
InstanceOf: Organization
Description: "Example HPI Organization"
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIOrganization"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier[=].value = "GZZ908-B"
* active = true
* name = "Reference Organization GZZ908-B"


Instance: GZZ999-J
InstanceOf: Organization
Description: "Example HPI Organization"
Usage: #example
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIOrganization"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* identifier[=].value = "GZZ999-J"
* active = true
* name = "Reference Organization GZZ999-J"
