
Instance: R00000012-G
InstanceOf: PractitionerRole
Description: "Example HPI PractitionerRole Medical Receptionist"
Usage: #example
* meta.versionId = "0"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitionerRole"
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-status"
* extension[=].extension[0].url = "active"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "reason"
* extension[=].extension[=].valueCodeableConcept.coding.version = "1.0"
* extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/hpi-practitioner-role-status-reason-code#other "Other"
* extension[=].extension[=].valueCodeableConcept.text = "Other"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-creator"
* extension[=].extension[0].url = "person"
* extension[=].extension[=].valueReference = Reference(Person/testall)
* extension[=].extension[+].url = "organization"
* extension[=].extension[=].valueReference = Reference(Organization/G00001-G)
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-practitioner-role-id"
* identifier.value = "R00000012-G"
* identifier.assigner = Reference(Organization/G00001-G)
* period.start = "2000-02-10"
* period.end = "2010-05-02"
* practitioner = Reference(Practitioner/90ZZLP)
* organization = Reference(Organization/GZZ998-G)
* code.coding.version = "1.2"
* code.coding = http://www.abs.gov.au/ausstats/abs@.nsf/mf/1220.0#542114 "Medical Receptionist"
* code.text = "Medical Receptionist"
* location = Reference(Location/FZZ999-B)
* telecom[0].system = #email
* telecom[=].value = "info@info.com"
* telecom[=].use = #work
* telecom[=].rank = 2
* telecom[=].period.start = "2000-02-10"
* telecom[=].period.end = "2010-05-02"
* telecom[+].system = #phone
* telecom[=].value = "1324654769"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[=].period.start = "2000-02-10"
* telecom[=].period.end = "2010-05-02"


Instance: R00000013-J
InstanceOf: PractitionerRole
Description: "Example HPI PractitionerRole Specialist Physician"
Usage: #example
* meta.versionId = "0"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitionerRole"
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-status"
* extension[=].extension[0].url = "active"
* extension[=].extension[=].valueBoolean = false
* extension[=].extension[+].url = "reason"
* extension[=].extension[=].valueCodeableConcept.coding.version = "1.0"
* extension[=].extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/hpi-practitioner-role-status-reason-code#other "Other"
* extension[=].extension[=].valueCodeableConcept.text = "Other"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-creator"
* extension[=].extension[0].url = "person"
* extension[=].extension[=].valueReference = Reference(Person/testall)
* extension[=].extension[+].url = "organization"
* extension[=].extension[=].valueReference = Reference(Organization/G00001-G)
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-practitioner-role-id"
* identifier.value = "R00000013-J"
* identifier.assigner = Reference(Organization/G00001-G)
* period.start = "2000-02-10"
* period.end = "2010-05-02"
* practitioner = Reference(Practitioner/98ZZYU)
* organization = Reference(Organization/GZZ998-G)
* code.coding.version = "1.2"
* code.coding = http://www.abs.gov.au/ausstats/abs@.nsf/mf/1220.0#253311 "Specialist Physician (General Medicine)"
* code.text = "Specialist Physician (General Medicine)"
* location = Reference(Location/FZZ999-B)
* telecom[0].system = #phone
* telecom[=].value = "1324654769"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[=].period.start = "2000-02-10"
* telecom[=].period.end = "2010-05-02"
* telecom[+].system = #email
* telecom[=].value = "specialist@physician.com"
* telecom[=].use = #work
* telecom[=].rank = 2
* telecom[=].period.start = "2000-02-10"
* telecom[=].period.end = "2010-05-02"
