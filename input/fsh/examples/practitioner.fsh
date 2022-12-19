Instance: 91ZABY
InstanceOf: Practitioner
Description: "Example HPI Practitioner with one registration"
Usage: #example
* meta.versionId = "10952"
* meta.lastUpdated = "2022-12-20T09:27:27.000+13:00"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitioner"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#L
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[=].valueCodeableConcept.coding.version = "2.0"
* extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#11111 "New Zealand European"
* extension[=].valueCodeableConcept.text = "New Zealand European"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/educational-qualification"
* extension[=].extension[0].url = "fullname"
* extension[=].extension[=].valueString = "Bachelor of Occupational Therapy"
* extension[=].extension[+].url = "year"
* extension[=].extension[=].valueDate = "2009"
* extension[=].extension[+].url = "institution"
* extension[=].extension[=].valueString = "Wintec"
* extension[=].extension[+].url = "city"
* extension[=].extension[=].valueString = "HAMILTON"
* extension[=].extension[+].url = "country"
* extension[=].extension[=].valueString = "NZ"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/educational-qualification"
* extension[=].extension[0].url = "fullname"
* extension[=].extension[=].valueString = "Master of Occupational Therapy"
* extension[=].extension[+].url = "year"
* extension[=].extension[=].valueDate = "2019"
* extension[=].extension[+].url = "institution"
* extension[=].extension[=].valueString = "Otago Polytechnic"
* extension[=].extension[+].url = "city"
* extension[=].extension[=].valueString = "DUNEDIN"
* extension[=].extension[+].url = "country"
* extension[=].extension[=].valueString = "NZ"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-person-id"
* identifier[=].value = "91ZABY"
* identifier[=].assigner = Reference(Organization/G00001-G)
* identifier[+].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/occupational-therapy-board-id"
* identifier[=].value = "96-20154"
* identifier[=].assigner = Reference(Organization/G00000-E)
* name.use = #official
* name.family = "Rhode"
* name.given[0] = "Lyndi"
* name.given[+] = "Jane"
* name.prefix = "ms"
* gender = #female
* birthDate = "1975-01-19"
* qualification.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/registration-status-code"
* qualification.extension[=].extension[0].url = "status"
* qualification.extension[=].extension[=].valueCodeableConcept.coding.version = "2.0"
* qualification.extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/practitioner-registration-status-code#current "A provider who holds or is deemed to hold a current practising certificate."
* qualification.extension[=].extension[=].valueCodeableConcept.text = "A provider who holds or is deemed to hold a current practising certificate."
* qualification.extension[=].extension[+].url = "period"
* qualification.extension[=].extension[=].valuePeriod.start = "2009-02-01"
* qualification.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/scope-of-practice"
* qualification.extension[=].extension[0].url = "code"
* qualification.extension[=].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* qualification.extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/practitioner-scope-of-practice-code#OCCT "Occupational Therapist"
* qualification.extension[=].extension[=].valueCodeableConcept.text = "Occupational Therapist"
* qualification.extension[=].extension[+].url = "period"
* qualification.extension[=].extension[=].valuePeriod.start = "2009-02-01"
* qualification.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/condition-on-practice"
* qualification.extension[=].extension[0].url = "description"
* qualification.extension[=].extension[=].valueString = "Must complete annual eye test"
* qualification.extension[=].extension[+].url = "period"
* qualification.extension[=].extension[=].valuePeriod.start = "2019-09-19"
* qualification.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/registration-initial-date"
* qualification.extension[=].valueDate = "2009-02-01"
* qualification.identifier.use = #official
* qualification.identifier.system = "https://standards.digital.health.nz/ns/occupational-therapy-board-id"
* qualification.identifier.value = "96-20154"
* qualification.identifier.assigner = Reference(Organization/G00000-E)
* qualification.code.coding.version = "2.0"
* qualification.code.coding = https://standards.digital.health.nz/ns/practitioner-registration-authority-code#OT "Occupational Therapy Board Register"
* qualification.code.text = "Occupational Therapy Board Register"
* qualification.period.start = "2021-04-01"
* qualification.period.end = "2122-03-31"
* qualification.issuer = Reference(Organization/G00000-E)
* communication.coding.version = "2007"
* communication.coding = urn:iso:std:iso:639:-3#eng "English"
* communication.text = "English"

Instance: 98ZZQJ
InstanceOf: Practitioner
Description: "Example HPI Practitioner with two registrations"
Usage: #example
* meta.versionId = "10594"
* meta.lastUpdated = "2022-08-30T14:34:08.000+12:00"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitioner"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#L
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/educational-qualification"
* extension[=].extension[0].url = "fullname"
* extension[=].extension[=].valueString = "Bachelor of Midwifery"
* extension[=].extension[+].url = "year"
* extension[=].extension[=].valueDate = "2019"
* extension[=].extension[+].url = "institution"
* extension[=].extension[=].valueString = "Auckland University of Technology"
* extension[=].extension[+].url = "city"
* extension[=].extension[=].valueString = "AUCKLAND"
* extension[=].extension[+].url = "country"
* extension[=].extension[=].valueString = "NZ"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/educational-qualification"
* extension[=].extension[0].url = "fullname"
* extension[=].extension[=].valueString = "Bachelor of Nursing (Maori)"
* extension[=].extension[+].url = "year"
* extension[=].extension[=].valueDate = "2009"
* extension[=].extension[+].url = "institution"
* extension[=].extension[=].valueString = "Whitireia Polytechnic"
* extension[=].extension[+].url = "city"
* extension[=].extension[=].valueString = "PALMERSTON NORTH"
* extension[=].extension[+].url = "country"
* extension[=].extension[=].valueString = "NZ"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-person-id"
* identifier[=].value = "98ZZQJ"
* identifier[=].assigner = Reference(Organization/G00001-G)
* identifier[+].use = #old
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-person-id"
* identifier[=].value = "90ZZGJ"
* identifier[=].assigner = Reference(Organization/G00001-G)
* identifier[+].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/nursing-council-id"
* identifier[=].value = "962054"
* identifier[=].assigner = Reference(Organization/G00008-K)
* identifier[+].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/midwifery-council-id"
* identifier[=].value = "95579"
* identifier[=].assigner = Reference(Organization/G00009-A)
* name.use = #official
* name.family = "Nurse-Midwife"
* name.given[0] = "TestTwo"
* name.given[+] = "Tworegistrations"
* name.prefix = "mrs"
* qualification[0].extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/registration-status-code"
* qualification[=].extension[=].extension[0].url = "status"
* qualification[=].extension[=].extension[=].valueCodeableConcept.coding.version = "2.0"
* qualification[=].extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/practitioner-registration-status-code#current "A provider who holds or is deemed to hold a current practising certificate."
* qualification[=].extension[=].extension[=].valueCodeableConcept.text = "A provider who holds or is deemed to hold a current practising certificate."
* qualification[=].extension[=].extension[+].url = "period"
* qualification[=].extension[=].extension[=].valuePeriod.start = "2019-02-01"
* qualification[=].extension[=].extension[=].valuePeriod.end = "2120-02-01"
* qualification[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/scope-of-practice"
* qualification[=].extension[=].extension[0].url = "code"
* qualification[=].extension[=].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* qualification[=].extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/practitioner-scope-of-practice-code#NCRN "Registered Nurse"
* qualification[=].extension[=].extension[=].valueCodeableConcept.text = "Registered Nurse"
* qualification[=].extension[=].extension[+].url = "period"
* qualification[=].extension[=].extension[=].valuePeriod.start = "2009-04-08"
* qualification[=].extension[=].extension[=].valuePeriod.end = "2029-03-27"
* qualification[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/condition-on-practice"
* qualification[=].extension[=].extension[0].url = "description"
* qualification[=].extension[=].extension[=].valueString = "NCRN Must have a competence assessment completed by a senior nurse within three months"
* qualification[=].extension[=].extension[+].url = "period"
* qualification[=].extension[=].extension[=].valuePeriod.start = "2009-04-08"
* qualification[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/registration-initial-date"
* qualification[=].extension[=].valueDate = "2009-02-01"
* qualification[=].identifier.use = #official
* qualification[=].identifier.system = "https://standards.digital.health.nz/ns/nursing-council-id"
* qualification[=].identifier.value = "962054"
* qualification[=].identifier.assigner = Reference(Organization/G00008-K)
* qualification[=].code.coding.version = "2.0"
* qualification[=].code.coding = https://standards.digital.health.nz/ns/practitioner-registration-authority-code#NC "Nursing Council of New Zealand Register Number"
* qualification[=].code.text = "Nursing Council of New Zealand Register Number"
* qualification[=].period.start = "2019-02-01"
* qualification[=].period.end = "2120-02-01"
* qualification[=].issuer = Reference(Organization/G00008-K)
* qualification[+].extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/registration-status-code"
* qualification[=].extension[=].extension[0].url = "status"
* qualification[=].extension[=].extension[=].valueCodeableConcept.coding.version = "2.0"
* qualification[=].extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/practitioner-registration-status-code#current "A provider who holds or is deemed to hold a current practising certificate."
* qualification[=].extension[=].extension[=].valueCodeableConcept.text = "A provider who holds or is deemed to hold a current practising certificate."
* qualification[=].extension[=].extension[+].url = "period"
* qualification[=].extension[=].extension[=].valuePeriod.start = "2020-12-10"
* qualification[=].extension[=].extension[=].valuePeriod.end = "2023-12-11"
* qualification[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/scope-of-practice"
* qualification[=].extension[=].extension[0].url = "code"
* qualification[=].extension[=].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* qualification[=].extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/practitioner-scope-of-practice-code#NCRN "Registered Nurse"
* qualification[=].extension[=].extension[=].valueCodeableConcept.text = "Registered Nurse"
* qualification[=].extension[=].extension[+].url = "period"
* qualification[=].extension[=].extension[=].valuePeriod.start = "2019-04-08"
* qualification[=].extension[=].extension[=].valuePeriod.end = "2122-04-11"
* qualification[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/scope-of-practice"
* qualification[=].extension[=].extension[0].url = "code"
* qualification[=].extension[=].extension[=].valueCodeableConcept.coding.version = "1.0.0"
* qualification[=].extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/practitioner-scope-of-practice-code#MWIF "Midwife"
* qualification[=].extension[=].extension[=].valueCodeableConcept.text = "Midwife"
* qualification[=].extension[=].extension[+].url = "period"
* qualification[=].extension[=].extension[=].valuePeriod.start = "2019-04-08"
* qualification[=].extension[=].extension[=].valuePeriod.end = "2122-04-11"
* qualification[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/condition-on-practice"
* qualification[=].extension[=].extension[0].url = "description"
* qualification[=].extension[=].extension[=].valueString = "NCRN Must have a competence assessment completed by a senior nurse within three months"
* qualification[=].extension[=].extension[+].url = "period"
* qualification[=].extension[=].extension[=].valuePeriod.start = "2019-04-08"
* qualification[=].extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/registration-initial-date"
* qualification[=].extension[=].valueDate = "2020-02-01"
* qualification[=].identifier.use = #official
* qualification[=].identifier.system = "https://standards.digital.health.nz/ns/midwifery-council-id"
* qualification[=].identifier.value = "95579"
* qualification[=].identifier.assigner = Reference(Organization/G00009-A)
* qualification[=].code.coding.version = "2.0"
* qualification[=].code.coding = https://standards.digital.health.nz/ns/practitioner-registration-authority-code#MW "Midwifery Council Register Number"
* qualification[=].code.text = "Midwifery Council Register Number"
* qualification[=].period.start = "2020-12-10"
* qualification[=].period.end = "2022-12-11"
* qualification[=].issuer = Reference(Organization/G00009-A)
* communication[0].coding.version = "2007"
* communication[=].coding = urn:iso:std:iso:639:-3#eng "English"
* communication[=].text = "English"
* communication[+].coding.version = "2007"
* communication[=].coding = urn:iso:std:iso:639:-3#eng "English"
* communication[=].text = "English"


Instance: 92ZZRE
InstanceOf: Practitioner
Description: "Example HPI Practitioner with No Registration 'NR'"
Usage: #example
* meta.versionId = "10673"
* meta.lastUpdated = "2022-10-14T08:04:23.000+13:00"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitioner"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#M
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* identifier.value = "92ZZRE"
* identifier.assigner = Reference(Organization/G00001-G)
* name[0].use = #official
* name[=].family = "O'Reilly"
* name[=].given[0] = "Walter"
* name[=].given[+] = "Eugene"
* name[=].prefix = "cpl"
* name[+].use = #old
* name[=].given = "Radar"
* communication.coding.version = "2007"
* communication.coding = urn:iso:std:iso:639:-3#eng "English"
* communication.text = "English"


Instance: 90ZZLP
InstanceOf: Practitioner
Description: "Example HPI Practitioner with No Registration 'NR' with confidentiality R"
Usage: #example
* meta.versionId = "9971"
* meta.lastUpdated = "2022-04-07T09:12:26.000+12:00"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitioner"
* meta.security[0] = http://terminology.hl7.org/CodeSystem/v3-ObservationValue#REDACTED
* meta.security[+] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#R
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-person-id"
* identifier.value = "90ZZLP"
* identifier.assigner = Reference(Organization/G00001-G)
