Instance: FZZ958-K
InstanceOf: Location
Description: "Example HPI Location with Managing Org"
Usage: #example
* meta.versionId = "10803"
* meta.lastUpdated = "2022-11-09T12:00:14.000+13:00"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPILocation"
* extension.url = "http://hl7.org.nz/fhir/StructureDefinition/established"
* extension.valuePeriod.start = "1980-12-12"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* identifier[=].value = "FZZ958-K"
* identifier[=].assigner = Reference(Organization/G00001-G)
* identifier[+].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/nzhis-facility-id"
* identifier[=].value = "9987"
* identifier[=].assigner = Reference(Organization/G00001-G)
* status = #active
* name = "Medical Centre Flat-Unit"
* alias = "Medical Centre Flat-Unit"
* alias.extension.url = "http://hl7.org.nz/fhir/StructureDefinition/alias-type"
* alias.extension.valueCodeableConcept.coding.version = "1.0.0"
* alias.extension.valueCodeableConcept.coding = https://standards.digital.health.nz/ns/alias-type-code#current "Current unverified or unofficial name"
* alias.extension.valueCodeableConcept.text = "Current unverified or unofficial name"
* type.coding.version = "1.0"
* type.coding = https://standards.digital.health.nz/ns/location-type-code#gpenrol "Enrolling GP Practice"
* telecom[0].system = #phone
* telecom[=].value = "021 555558"
* telecom[=].use = #temp
* telecom[=].rank = 1
* telecom[=].period.start = "1980-12-12"
* telecom[+].system = #phone
* telecom[=].value = "021 464646"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[=].period.start = "1980-12-12"
* address.extension.url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address.extension.valueString = "Wellington 6011"
* address.use = #work
* address.type = #physical
* address.text = "2C/123 Molesworth Street, Thorndon, Wellington 6011"
* address.line[0] = "Thorndon"
* address.line[+] = "2C/123 Molesworth Street"
* managingOrganization = Reference(Organization/GZZ956-B) "Flat-Unit Address Org"


Instance: FZZ999-B
InstanceOf: Location
Description: "Example HPI Location with messaging address"
Usage: #example
* meta.versionId = "10685"
* meta.lastUpdated = "2022-10-17T16:01:20.000+13:00"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPILocation"
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/established"
* extension[=].valuePeriod.start = "2013-01-02"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/messaging-address"
* extension[=].extension[0].url = "provider"
* extension[=].extension[=].valueString = "healthlink"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueString = "livefacedi"
* identifier[0].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* identifier[=].value = "FZZ999-B"
* identifier[=].assigner = Reference(Organization/G00001-G)
* identifier[+].use = #old
* identifier[=].system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* identifier[=].value = "FZZ997-J"
* identifier[=].assigner = Reference(Organization/G00001-G)
* identifier[+].use = #official
* identifier[=].system = "https://standards.digital.health.nz/ns/nzhis-facility-id"
* identifier[=].value = "Z999"
* identifier[=].assigner = Reference(Organization/G00001-G)
* status = #active
* name = "Live Facilty"
* alias[0] = "Do not change details of this Facility"
* alias[+] = "Live Facilty"
* alias[0].extension.url = "http://hl7.org.nz/fhir/StructureDefinition/alias-type"
* alias[=].extension.valueCodeableConcept.coding.version = "1.0.0"
* alias[=].extension.valueCodeableConcept.coding = https://standards.digital.health.nz/ns/alias-type-code#aka "Aka"
* alias[=].extension.valueCodeableConcept.text = "Aka"
* alias[+].extension.url = "http://hl7.org.nz/fhir/StructureDefinition/alias-type"
* alias[=].extension.valueCodeableConcept.coding.version = "1.0.0"
* alias[=].extension.valueCodeableConcept.coding = https://standards.digital.health.nz/ns/alias-type-code#current "Current unverified or unofficial name"
* alias[=].extension.valueCodeableConcept.text = "Current unverified or unofficial name"
* type.coding.version = "1.0"
* type.coding = https://standards.digital.health.nz/ns/location-type-code#gpenrol "Enrolling GP Practice"
* telecom[0].system = #email
* telecom[=].value = "email007@email.co.nz"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[=].period.start = "2013-01-02"
* telecom[+].system = #phone
* telecom[=].value = "021 222221"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[=].period.start = "2013-01-02"
* address.extension.url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address.extension.valueString = "Wellington 6011"
* address.use = #work
* address.type = #physical
* address.text = "133 Molesworth Street, Thorndon, Wellington 6011"
* address.line[0] = "Thorndon"
* address.line[+] = "133 Molesworth Street"
* managingOrganization = Reference(Organization/GZZ999-J) "Verification Test Organisation"
