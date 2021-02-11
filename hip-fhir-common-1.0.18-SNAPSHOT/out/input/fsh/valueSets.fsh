ValueSet: Nhi_address_not_validated_reason
Id: Nhi_address_not_validated_reason
Title: "Address Not Validated Reason"
Description: "Reason why an address is not validated."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/address-not-validated-reason-code"
* ^version = "1.1"
* ^status = #active
* ^experimental = false
* ^date = "2020-04-20T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "To be used when an unvalidated address is returned."
* include codes from system $address-not-validated-reason-code

ValueSet: ContactPointUse
Id: hpi-contactpoint-use
Title: "Use values for a ContactPoint"
Description: "Use values for a ContactPoint"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-contact-point-use-code"
* ^version = "0.2.0"
* ^status = #active
* ^date = "2020-11-25T23:08:15+00:00"
* ^publisher = "David Hay"
* ^contact[0].name = "David Hay"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "mailto:david.hay25@gmail.com"
* ContactPointUse#home "A communication contact point at a home; attempted contacts for business purposes might intrude privacy and chances are one will contact family or other household members instead of the person one wishes to call. Typically used with urgent cases, or if no other contacts are available."
* ContactPointUse#work "An office contact point. First choice for business related contacts during business hours."
* ContactPointUse#mobile "A telecommunication device that moves and stays with its owner. May have characteristics of all other use codes, suitable for urgent matters, not the first choice for routine business."

ValueSet: HumanNameUse
Id: hpi-humanname-use
Title: "Use values for a HumanName"
Description: "Use values for a HumanName"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-human-name-use-code"
* ^version = "0.2.0"
* ^status = #active
* ^date = "2020-11-25T23:08:15+00:00"
* ^publisher = "David Hay"
* ^contact[0].name = "David Hay"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "mailto:david.hay25@gmail.com"
* ^jurisdiction[0] = urn:iso:std:iso:3166#NZ
* $name-use#usual "Known as/conventional/the one you normally use."
* $name-use#official "The formal name as registered in an official (government) registry, but which name might not be commonly used. May be called 'legal name'."
* $name-use#old "This name is no longer in use (or was never correct, but retained for records)."

ValueSet: IdentfierUse
Id: hpi-identifier-use
Title: "IdentifierUse"
Description: "Use values for an Identifier"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-identifier-use-code"
* ^version = "0.2.0"
* ^status = #active
* ^date = "2020-12-18T23:08:15+00:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "Identifies the purpose for this identifier, if known."
* IdentifierUse#official "Official"
* IdentifierUse#old "Old"

ValueSet: AddressType
Id: address-type
Title: "AddressType"
Description: "The type of an address (physical / postal)."
* ^meta.lastUpdated = "2019-11-01T09:29:23.356+11:00"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #fhir
* ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[1].valueCode = #normative
* ^extension[2].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* ^extension[2].valueCode = #4.0.0
* ^extension[3].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[3].valueInteger = 5
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.16.840.1.113883.4.642.3.69"
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "HL7 (FHIR Project)"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://hl7.org/fhir"
* ^contact[0].telecom[1].system = #email
* ^contact[0].telecom[1].value = "fhir@lists.hl7.org"
* ^immutable = true
* include codes from system AddressType

ValueSet: AddressUse
Id: address-use
Title: "AddressUse"
Description: "The use of an address."
* ^meta.lastUpdated = "2019-11-01T09:29:23.356+11:00"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #fhir
* ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[1].valueCode = #normative
* ^extension[2].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* ^extension[2].valueCode = #4.0.0
* ^extension[3].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[3].valueInteger = 5
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.16.840.1.113883.4.642.3.67"
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "HL7 (FHIR Project)"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://hl7.org/fhir"
* ^contact[0].telecom[1].system = #email
* ^contact[0].telecom[1].value = "fhir@lists.hl7.org"
* ^immutable = true
* include codes from system AddressUse

ValueSet: AdministrativeGender
Id: administrative-gender
Title: "AdministrativeGender"
Description: "The gender of a person used for administrative purposes."
* ^meta.lastUpdated = "2019-11-01T09:29:23.356+11:00"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #pa
* ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[1].valueCode = #normative
* ^extension[2].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[2].valueInteger = 5
* ^extension[3].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* ^extension[3].valueCode = #4.0.0
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.16.840.1.113883.4.642.3.1"
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "HL7 (FHIR Project)"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://hl7.org/fhir"
* ^contact[0].telecom[1].system = #email
* ^contact[0].telecom[1].value = "fhir@lists.hl7.org"
* ^immutable = true
* include codes from system $administrative-gender

ValueSet: ContactPointSystem
Id: contact-point-system
Title: "ContactPointSystem"
Description: "Telecommunications form for contact point."
* ^meta.lastUpdated = "2019-11-01T09:29:23.356+11:00"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #fhir
* ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[1].valueCode = #normative
* ^extension[2].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* ^extension[2].valueCode = #4.0.0
* ^extension[3].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[3].valueInteger = 5
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.16.840.1.113883.4.642.3.71"
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "HL7 (FHIR Project)"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://hl7.org/fhir"
* ^contact[0].telecom[1].system = #email
* ^contact[0].telecom[1].value = "fhir@lists.hl7.org"
* ^immutable = true
* include codes from system ContactPointSystem

ValueSet: ContactPointUse
Id: contact-point-use
Title: "ContactPointUse"
Description: "Use of contact point."
* ^meta.lastUpdated = "2019-11-01T09:29:23.356+11:00"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #fhir
* ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[1].valueCode = #normative
* ^extension[2].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* ^extension[2].valueCode = #4.0.0
* ^extension[3].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[3].valueInteger = 5
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.16.840.1.113883.4.642.3.73"
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "HL7 (FHIR Project)"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://hl7.org/fhir"
* ^contact[0].telecom[1].system = #email
* ^contact[0].telecom[1].value = "fhir@lists.hl7.org"
* ^immutable = true
* include codes from system ContactPointUse

ValueSet: Identifier Type Codes
Id: identifier-type
Title: "IdentifierType"
Description: "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose."
* ^meta.lastUpdated = "2019-11-01T09:29:23.356+11:00"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/valueset-warning"
* ^extension[0].valueMarkdown = "Types are for general categories of identifiers. See [the identifier registry](identifier-registry.html) for a list of common identifier systems"
* ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[1].valueCode = #vocab
* ^extension[2].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[2].valueCode = #normative
* ^extension[3].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* ^extension[3].valueCode = #4.0.0
* ^extension[4].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[4].valueInteger = 5
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.16.840.1.113883.4.642.3.45"
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "HL7 (FHIR Project)"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://hl7.org/fhir"
* $v2-0203#DL
* $v2-0203#PPN
* $v2-0203#BRN
* $v2-0203#MR
* $v2-0203#MCN
* $v2-0203#EN
* $v2-0203#TAX
* $v2-0203#NIIP
* $v2-0203#PRN
* $v2-0203#MD
* $v2-0203#DR
* $v2-0203#ACSN
* $v2-0203#UDI
* $v2-0203#SNO
* $v2-0203#SB
* $v2-0203#PLAC
* $v2-0203#FILL
* $v2-0203#JHN

ValueSet: IdentifierUse
Id: identifier-use
Title: "IdentifierUse"
Description: "Identifies the purpose for this identifier, if known ."
* ^meta.lastUpdated = "2019-11-01T09:29:23.356+11:00"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #fhir
* ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[1].valueCode = #normative
* ^extension[2].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* ^extension[2].valueCode = #4.0.0
* ^extension[3].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[3].valueInteger = 5
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.16.840.1.113883.4.642.3.57"
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "HL7 (FHIR Project)"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://hl7.org/fhir"
* ^contact[0].telecom[1].system = #email
* ^contact[0].telecom[1].value = "fhir@lists.hl7.org"
* ^immutable = true
* include codes from system IdentifierUse

ValueSet: NameUse
Id: name-use
Title: "NameUse"
Description: "The use of a human name."
* ^meta.lastUpdated = "2019-11-01T09:29:23.356+11:00"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #fhir
* ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[1].valueCode = #normative
* ^extension[2].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* ^extension[2].valueCode = #4.0.0
* ^extension[3].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[3].valueInteger = 5
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.16.840.1.113883.4.642.3.65"
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "HL7 (FHIR Project)"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://hl7.org/fhir"
* ^contact[0].telecom[1].system = #email
* ^contact[0].telecom[1].value = "fhir@lists.hl7.org"
* ^immutable = true
* include codes from system $name-use