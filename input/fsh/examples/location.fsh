Instance: FZZ941-D
InstanceOf: Location
Description: "Example HPI Location Inactive (disestablished)"
Usage: #example
* meta.versionId = "8954"
* meta.lastUpdated = "2022-04-05T15:04:26.000+12:00"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPILocation"
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/established"
* extension[=].valuePeriod.start = "2016-06-06"
* extension[=].valuePeriod.end = "2019-09-09"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/dhb"
* extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[=].valueCodeableConcept.coding = $dhb-code#G00036-D "Capital and Coast District Health Board"
* extension[=].valueCodeableConcept.text = "Capital and Coast District Health Board"
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-facility-id"
* identifier.value = "FZZ941-D"
* identifier.assigner = Reference(Organization/G00001-G)
* status = #inactive
* name = "Dental Clinic with Dist Date"
* alias[0] = "Disestablished Dental"
* alias[+] = "Dental Clinic with Dist Date"
* alias[0].extension.url = "http://hl7.org.nz/fhir/StructureDefinition/alias-type"
* alias[=].extension.valueCodeableConcept.coding.version = "1.0.0"
* alias[=].extension.valueCodeableConcept.coding = $alias-type-code#aka "Aka"
* alias[=].extension.valueCodeableConcept.text = "Aka"
* alias[+].extension.url = "http://hl7.org.nz/fhir/StructureDefinition/alias-type"
* alias[=].extension.valueCodeableConcept.coding.version = "1.0.0"
* alias[=].extension.valueCodeableConcept.coding = $alias-type-code#current "Current unverified or unofficial name"
* alias[=].extension.valueCodeableConcept.text = "Current unverified or unofficial name"
* type.coding.version = "1.0"
* type.coding = $location-type-code#dental "Community Dental"
* telecom.system = #phone
* telecom.value = "021 789878"
* telecom.use = #work
* telecom.rank = 1
* telecom.period.start = "2016-06-06"
* address.id = "1112139"
* address.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-geocode"
* address.extension[=].extension[0].url = "latitude"
* address.extension[=].extension[=].valueDecimal = -41.272975
* address.extension[=].extension[+].url = "longitude"
* address.extension[=].extension[=].valueDecimal = 174.777729
* address.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address.extension[=].valueString = "Thorndon"
* address.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/building-name"
* address.extension[=].valueString = "Building name for eSAM address 1112139"
* address.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"
* address.extension[=].valueCodeableConcept.coding.version = "3.0"
* address.extension[=].valueCodeableConcept.coding = $domicile-code#2077 "Thorndon - Tinakori Road"
* address.extension[=].valueCodeableConcept.text = "Thorndon - Tinakori Road"
* address.use = #work
* address.type = #physical
* address.text = "Building name for eSAM address 1112139, 133 Molesworth Street, Thorndon 6011, Wellington"
* address.line = "133 Molesworth Street"
* address.city = "Wellington"
* address.postalCode = "6011"
* managingOrganization = Reference(Organization/GZZ908-B) "Org Disestablishment Date"




Instance: FZZ958-K
InstanceOf: Location
Description: "Example HPI Location with Managing Org"
Usage: #example
* meta.versionId = "10803"
* meta.lastUpdated = "2022-11-09T12:00:14.000+13:00"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPILocation"
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/established"
* extension[=].valuePeriod.start = "1980-12-12"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/dhb"
* extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[=].valueCodeableConcept.coding = $dhb-code#G00036-D "Capital and Coast District Health Board"
* extension[=].valueCodeableConcept.text = "Capital and Coast District Health Board"
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
* alias.extension.valueCodeableConcept.coding = $alias-type-code#current "Current unverified or unofficial name"
* alias.extension.valueCodeableConcept.text = "Current unverified or unofficial name"
* type.coding.version = "1.0"
* type.coding = $location-type-code#gpenrol "Enrolling GP Practice"
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
* address.id = "1517156"
* address.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-geocode"
* address.extension[=].extension[0].url = "latitude"
* address.extension[=].extension[=].valueDecimal = -41.273494
* address.extension[=].extension[+].url = "longitude"
* address.extension[=].extension[=].valueDecimal = 174.777705
* address.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address.extension[=].valueString = "Thorndon"
* address.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"
* address.extension[=].valueCodeableConcept.coding.version = "3.0"
* address.extension[=].valueCodeableConcept.coding = $domicile-code#2077 "Thorndon - Tinakori Road"
* address.extension[=].valueCodeableConcept.text = "Thorndon - Tinakori Road"
* address.use = #work
* address.type = #physical
* address.text = "123 Molesworth Street, Thorndon 6011, Wellington"
* address.line = "123 Molesworth Street"
* address.city = "Wellington"
* address.postalCode = "6011"
* managingOrganization = Reference(Organization/GZZ956-B) "Flat-Unit Address Org"


Alias: $dhb-code = https://standards.digital.health.nz/ns/dhb-code
Alias: $alias-type-code = https://standards.digital.health.nz/ns/alias-type-code
Alias: $location-type-code = https://standards.digital.health.nz/ns/location-type-code
Alias: $domicile-code = https://standards.digital.health.nz/ns/domicile-code

Instance: FZZ999-B
InstanceOf: Location
Description: "Example HPI Location with messaging address"
Usage: #example
* meta.versionId = "11148"
* meta.lastUpdated = "2023-02-24T17:14:14.000+13:00"
* meta.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPILocation"
* extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/established"
* extension[=].valuePeriod.start = "2013-01-02"
* extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/dhb"
* extension[=].valueCodeableConcept.coding.version = "1.0.0"
* extension[=].valueCodeableConcept.coding = $dhb-code#G00036-D "Capital and Coast District Health Board"
* extension[=].valueCodeableConcept.text = "Capital and Coast District Health Board"
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
* alias[=].extension.valueCodeableConcept.coding = $alias-type-code#aka "Aka"
* alias[=].extension.valueCodeableConcept.text = "Aka"
* alias[+].extension.url = "http://hl7.org.nz/fhir/StructureDefinition/alias-type"
* alias[=].extension.valueCodeableConcept.coding.version = "1.0.0"
* alias[=].extension.valueCodeableConcept.coding = $alias-type-code#current "Current unverified or unofficial name"
* alias[=].extension.valueCodeableConcept.text = "Current unverified or unofficial name"
* type.coding.version = "1.0"
* type.coding = $location-type-code#gpenrol "Enrolling GP Practice"
* telecom[0].system = #email
* telecom[=].value = "email007@email.co.nz"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[=].period.start = "2013-01-02"
* telecom[+].system = #phone
* telecom[=].value = "02865865865"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[=].period.start = "2013-01-02"
* address.id = "1112139"
* address.extension[0].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-geocode"
* address.extension[=].extension[0].url = "latitude"
* address.extension[=].extension[=].valueDecimal = -41.272975
* address.extension[=].extension[+].url = "longitude"
* address.extension[=].extension[=].valueDecimal = 174.777729
* address.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/suburb"
* address.extension[=].valueString = "Thorndon"
* address.extension[+].url = "http://hl7.org.nz/fhir/StructureDefinition/domicile-code"
* address.extension[=].valueCodeableConcept.coding.version = "3.0"
* address.extension[=].valueCodeableConcept.coding = $domicile-code#2077 "Thorndon - Tinakori Road"
* address.extension[=].valueCodeableConcept.text = "Thorndon - Tinakori Road"
* address.use = #work
* address.type = #physical
* address.text = "133 Molesworth Street, Thorndon 6011, Wellington"
* address.line = "133 Molesworth Street"
* address.city = "Wellington"
* address.postalCode = "6011"
* managingOrganization = Reference(Organization/GZZ999-J) "Verification Test Organisation"
