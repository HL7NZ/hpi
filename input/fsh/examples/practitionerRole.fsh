Instance: R00000012-G
InstanceOf: PractitionerRole
Description: "Example HPI PractitionerRole Medical Receptionist"
Usage: #example
* meta.versionId = "13"
* meta.lastUpdated = "2022-11-21T17:02:33.184+13:00"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitionerRole"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#M
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-status-reason"
* extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[=].valueCodeableConcept.coding = https://standards.digital.health.nz/ns/hpi-practitioner-role-status-reason-code#other "other"
* extension[=].valueCodeableConcept.text = "other"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-creator"
* extension[=].extension[0].url = "person"
* extension[=].extension[=].valueReference = Reference(Person/testall)
* extension[=].extension[+].url = "organization"
* extension[=].extension[=].valueReference = Reference(Organization/G00001-G)
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/messaging-address"
* extension[=].extension[0].url = "provider"
* extension[=].extension[=].valueString = "healthlink"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueString = "changed-edi-address"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-practitionerrole-id"
* identifier.value = "R00000012-G"
* identifier.assigner = Reference(Organization/G00001-G)
* active = false
* period.start = "2000-02-10"
* period.end = "2000-02-11"
* practitioner = Reference(Practitioner/90ZZLP)
* organization = Reference(Organization/GZZ998-G)
* code.coding.version = "1.2"
* code.coding = http://www.abs.gov.au/ausstats/abs@.nsf/mf/1220.0#542114 "Medical Receptionist"
* code.text = "Medical Receptionist"
* location = Reference(Location/FZZ999-B)
* telecom[0].system = #phone
* telecom[=].value = "1324654788"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[=].period.start = "2000-02-10"
* telecom[=].period.end = "2010-05-05"
* telecom[+].system = #email
* telecom[=].value = "infoooor@infooooor.com"
* telecom[=].use = #work
* telecom[=].rank = 2
* telecom[=].period.start = "2000-02-10"
* telecom[=].period.end = "2010-05-06"


Instance: R00000015-C
InstanceOf: PractitionerRole
Description: "Example HPI PractitionerRole with confidentiality R"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2022-09-01T15:21:57.885+12:00"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitionerRole"
* meta.security[0] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#R
* meta.security[+] = http://terminology.hl7.org/CodeSystem/v3-ObservationValue#REDACTED
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-practitionerrole-id"
* identifier.value = "R00000015-C"
* identifier.assigner = Reference(Organization/G00001-G)
* active = false
* practitioner = Reference(Practitioner/99ZZZS)
* code.coding.version = "1.2"
* code.coding = http://www.abs.gov.au/ausstats/abs@.nsf/mf/1220.0#323112 "Aircraft Maintenance Engineer (Mechanical)"
* code.text = "Aircraft Maintenance Engineer (Mechanical)"


Instance: R00000029-P
InstanceOf: PractitionerRole
Description: "Example HPI PractitionerRole with messagin address"
Usage: #example
* meta.versionId = "4"
* meta.lastUpdated = "2022-11-23T11:10:39.516+13:00"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitionerRole"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#M
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-creator"
* extension[=].extension[0].url = "person"
* extension[=].extension[=].valueReference = Reference(Person/testall)
* extension[=].extension[+].url = "organization"
* extension[=].extension[=].valueReference = Reference(Organization/G00001-G)
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/messaging-address"
* extension[=].extension[0].url = "provider"
* extension[=].extension[=].valueString = "healthlink"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueString = "changed-edi-address"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-practitionerrole-id"
* identifier.value = "R00000029-P"
* identifier.assigner = Reference(Organization/G00001-G)
* active = true
* period.start = "2011-05-06"
* practitioner = Reference(Practitioner/90ZZLP)
* organization = Reference(Organization/GZZ998-G)
* code.coding.version = "1.2"
* code.coding = http://www.abs.gov.au/ausstats/abs@.nsf/mf/1220.0#542111 "Receptionist (General)"
* code.text = "Receptionist (General)"
* location = Reference(Location/FZZ999-B)
* telecom[0].system = #phone
* telecom[=].value = "1324654769"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[=].period.start = "2011-05-06"
* telecom[+].system = #email
* telecom[=].value = "saranya@test.com"
* telecom[=].use = #work
* telecom[=].rank = 2
* telecom[=].period.start = "2011-05-06"
* telecom[+].system = #url
* telecom[=].value = "90ZZLP@contactme.com"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[=].period.start = "2011-05-06"
* telecom[+].system = #sms
* telecom[=].value = "1324654765"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[=].period.start = "2011-05-06"
* telecom[+].system = #phone
* telecom[=].value = "1324654767"
* telecom[=].use = #work
* telecom[=].rank = 3
* telecom[=].period.start = "2011-05-06"
* telecom[+].system = #phone
* telecom[=].value = "1324654766"
* telecom[=].use = #temp
* telecom[=].rank = 1
* telecom[=].period.start = "2011-05-06"
* telecom[+].system = #phone
* telecom[=].value = "1324654768"
* telecom[=].use = #work
* telecom[=].rank = 2
* telecom[=].period.start = "2011-05-06"
