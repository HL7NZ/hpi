CodeSystem: AddressType
Id: address-type
Title: "AddressType"
Description: "The type of an address (physical / postal)."
* ^meta.lastUpdated = "2019-11-01T09:29:23.356+11:00"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #fhir
* ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[1].valueCode = #normative
* ^extension[2].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* ^extension[2].valueCode = #4.0.0
* ^extension[3].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[3].valueInteger = 5
* ^url = "http://hl7.org/fhir/address-type"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.16.840.1.113883.4.642.4.70"
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "HL7 (FHIR Project)"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://hl7.org/fhir"
* ^contact[0].telecom[1].system = #email
* ^contact[0].telecom[1].value = "fhir@lists.hl7.org"
* ^caseSensitive = true
* ^valueSet = "http://hl7.org/fhir/ValueSet/address-type"
* ^content = #complete
* #postal "Postal" "Mailing addresses - PO Boxes and care-of addresses."
* #physical "Physical" "A physical address that can be visited."
* #both "Postal & Physical" "An address that is both physical and postal."

CodeSystem: AddressUse
Id: address-use
Title: "AddressUse"
Description: "The use of an address."
* ^meta.lastUpdated = "2019-11-01T09:29:23.356+11:00"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #fhir
* ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[1].valueCode = #normative
* ^extension[2].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* ^extension[2].valueCode = #4.0.0
* ^extension[3].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[3].valueInteger = 5
* ^url = "http://hl7.org/fhir/address-use"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.16.840.1.113883.4.642.4.68"
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "HL7 (FHIR Project)"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://hl7.org/fhir"
* ^contact[0].telecom[1].system = #email
* ^contact[0].telecom[1].value = "fhir@lists.hl7.org"
* ^caseSensitive = true
* ^valueSet = "http://hl7.org/fhir/ValueSet/address-use"
* ^content = #complete
* #home "Home" "A communication address at a home."
* #work "Work" "An office address. First choice for business related contacts during business hours."
* #temp "Temporary" "A temporary address. The period can provide more detailed information."
* #old "Old / Incorrect" "This address is no longer in use (or was never correct but retained for records)."
* #billing "Billing" "An address to be used to send bills, invoices, receipts etc."

CodeSystem: ContactPointSystem
Id: contact-point-system
Title: "ContactPointSystem"
Description: "Telecommunications form for contact point."
* ^meta.lastUpdated = "2019-11-01T09:29:23.356+11:00"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #fhir
* ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[1].valueCode = #normative
* ^extension[2].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* ^extension[2].valueCode = #4.0.0
* ^extension[3].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[3].valueInteger = 5
* ^url = "http://hl7.org/fhir/contact-point-system"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.16.840.1.113883.4.642.4.72"
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "HL7 (FHIR Project)"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://hl7.org/fhir"
* ^contact[0].telecom[1].system = #email
* ^contact[0].telecom[1].value = "fhir@lists.hl7.org"
* ^caseSensitive = true
* ^valueSet = "http://hl7.org/fhir/ValueSet/contact-point-system"
* ^content = #complete
* #phone "Phone" "The value is a telephone number used for voice calls. Use of full international numbers starting with + is recommended to enable automatic dialing support but not required."
* #fax "Fax" "The value is a fax machine. Use of full international numbers starting with + is recommended to enable automatic dialing support but not required."
* #email "Email" "The value is an email address."
* #pager "Pager" "The value is a pager number. These may be local pager numbers that are only usable on a particular pager system."
* #url "URL" "A contact that is not a phone, fax, pager or email address and is expressed as a URL.  This is intended for various institutional or personal contacts including web sites, blogs, Skype, Twitter, Facebook, etc. Do not use for email addresses."
* #sms "SMS" "A contact that can be used for sending an sms message (e.g. mobile phones, some landlines)."
* #other "Other" "A contact that is not a phone, fax, page or email address and is not expressible as a URL.  E.g. Internal mail address.  This SHOULD NOT be used for contacts that are expressible as a URL (e.g. Skype, Twitter, Facebook, etc.)  Extensions may be used to distinguish "other" contact types."

CodeSystem: ContactPointUse
Id: contact-point-use
Title: "ContactPointUse"
Description: "Use of contact point."
* ^meta.lastUpdated = "2019-11-01T09:29:23.356+11:00"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #fhir
* ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[1].valueCode = #normative
* ^extension[2].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* ^extension[2].valueCode = #4.0.0
* ^extension[3].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[3].valueInteger = 5
* ^url = "http://hl7.org/fhir/contact-point-use"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.16.840.1.113883.4.642.4.74"
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "HL7 (FHIR Project)"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://hl7.org/fhir"
* ^contact[0].telecom[1].system = #email
* ^contact[0].telecom[1].value = "fhir@lists.hl7.org"
* ^caseSensitive = true
* ^valueSet = "http://hl7.org/fhir/ValueSet/contact-point-use"
* ^content = #complete
* #home "Home" "A communication contact point at a home; attempted contacts for business purposes might intrude privacy and chances are one will contact family or other household members instead of the person one wishes to call. Typically used with urgent cases, or if no other contacts are available."
* #work "Work" "An office contact point. First choice for business related contacts during business hours."
* #temp "Temp" "A temporary contact point. The period can provide more detailed information."
* #old "Old" "This contact point is no longer in use (or was never correct, but retained for records)."
* #mobile "Mobile" "A telecommunication device that moves and stays with its owner. May have characteristics of all other use codes, suitable for urgent matters, not the first choice for routine business."

CodeSystem: IdentifierUse
Id: identifier-use
Title: "IdentifierUse"
Description: "Identifies the purpose for this identifier, if known ."
* ^meta.lastUpdated = "2019-11-01T09:29:23.356+11:00"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #fhir
* ^extension[1].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[1].valueCode = #normative
* ^extension[2].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* ^extension[2].valueCode = #4.0.0
* ^extension[3].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[3].valueInteger = 5
* ^url = "http://hl7.org/fhir/identifier-use"
* ^identifier[0].system = "urn:ietf:rfc:3986"
* ^identifier[0].value = "urn:oid:2.16.840.1.113883.4.642.4.58"
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2019-11-01T09:29:23+11:00"
* ^publisher = "HL7 (FHIR Project)"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://hl7.org/fhir"
* ^contact[0].telecom[1].system = #email
* ^contact[0].telecom[1].value = "fhir@lists.hl7.org"
* ^caseSensitive = true
* ^valueSet = "http://hl7.org/fhir/ValueSet/identifier-use"
* ^content = #complete
* #usual "Usual" "The identifier recommended for display and use in real-world interactions."
* #official "Official" "The identifier considered to be most trusted for the identification of this item. Sometimes also known as "primary" and "main". The determination of "official" is subjective and implementation guides often provide additional guidelines for use."
* #temp "Temp" "A temporary identifier."
* #secondary "Secondary" "An identifier that was assigned in secondary use - it serves to identify the object in a relative context, but cannot be consistently assigned to the same object again in a different context."
* #old "Old" "The identifier id no longer considered valid, but may be relevant for search purposes.  E.g. Changes to identifier schemes, account merges, etc."