
Instance: R00000008-F
InstanceOf: PractitionerRole
Description: "Example HPI PractitionerRole"
Usage: #example
* meta.versionId = "0"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitionerRole"
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-status"
* extension[=].extension.url = "active"
* extension[=].extension.valueBoolean = true
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-creator"
* extension[=].extension.url = "person"
* extension[=].extension.valueReference = Reference(Person/uatall)
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-practitioner-role-id"
* identifier.value = "R00000008-F"
* identifier.assigner = Reference(Organization/G00001-G)
* period.start = "2000-02-10"
* period.end = "2010-05-02"
* practitioner = Reference(Practitioner/99ZZPK)
* organization = Reference(Organization/GZZ979-C)
* code.coding.version = "1.2"
* code.coding = http://www.abs.gov.au/ausstats/abs@.nsf/mf/1220.0#323111 "Aircraft Maintenance Engineer (Avionics)"
* code.text = "Aircraft Maintenance Engineer (Avionics)"
* location = Reference(Location/FZZ945-A)
* telecom[0].system = #phone
* telecom[=].value = "1324654769"
* telecom[=].use = #work
* telecom[=].rank = 3
* telecom[=].period.start = "2000-07-09"
* telecom[=].period.end = "2001-08-10"
* telecom[+].system = #email
* telecom[=].value = "saranya@test.com"
* telecom[=].use = #work
* telecom[=].rank = 2
* telecom[=].period.start = "2000-07-07"
* telecom[=].period.end = "2000-07-08"


Instance: R00000009-H
InstanceOf: PractitionerRole
Description: "Example HPI PractitionerRole"
Usage: #example
* meta.versionId = "0"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitionerRole"
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-status"
* extension[=].extension.url = "active"
* extension[=].extension.valueBoolean = true
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-creator"
* extension[=].extension.url = "person"
* extension[=].extension.valueReference = Reference(Person/uatall)
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-practitioner-role-id"
* identifier.value = "R00000009-H"
* identifier.assigner = Reference(Organization/G00001-G)
* period.start = "2000-02-10"
* period.end = "2010-05-02"
* practitioner = Reference(Practitioner/99ZZZS)
* organization = Reference(Organization/GZZ979-C)
* code.coding.version = "1.2"
* code.coding = http://www.abs.gov.au/ausstats/abs@.nsf/mf/1220.0#323111 "Aircraft Maintenance Engineer (Avionics)"
* code.text = "Aircraft Maintenance Engineer (Avionics)"
* location = Reference(Location/FZZ945-A)
* telecom[0].system = #email
* telecom[=].value = "saranya@test.com"
* telecom[=].use = #work
* telecom[=].rank = 2
* telecom[=].period.start = "2000-07-07"
* telecom[=].period.end = "2000-07-08"
* telecom[+].system = #phone
* telecom[=].value = "1324654769"
* telecom[=].use = #work
* telecom[=].rank = 3
* telecom[=].period.start = "2000-07-09"
* telecom[=].period.end = "2001-08-10"
