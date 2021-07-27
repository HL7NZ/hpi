CodeSystem: AddressUse
Id: address-use
Title: "AddressUse"
Description: "The use of an address."
* ^meta.lastUpdated = "2019-11-01T09:29:23.356+11:00"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #normative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* ^extension[=].valueCode = #4.0.0
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 5
* ^url = "http://hl7.org/fhir/address-use"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.4.68"
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "HL7 (FHIR Project)"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://hl7.org/fhir"
* ^contact.telecom[+].system = #email
* ^contact.telecom[=].value = "fhir@lists.hl7.org"
* ^caseSensitive = true
* ^valueSet = "http://hl7.org/fhir/ValueSet/address-use"
* ^content = #complete
* #home "Home" "A communication address at a home."
* #work "Work" "An office address. First choice for business related contacts during business hours."
* #temp "Temporary" "A temporary address. The period can provide more detailed information."
* #old "Old / Incorrect" "This address is no longer in use (or was never correct but retained for records)."
* #billing "Billing" "An address to be used to send bills, invoices, receipts etc."