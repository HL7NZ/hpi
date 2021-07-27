CodeSystem: ContactPointSystem
Id: contact-point-system
Title: "ContactPointSystem"
Description: "Telecommunications form for contact point."
* ^meta.lastUpdated = "2019-11-01T09:29:23.356+11:00"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #normative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* ^extension[=].valueCode = #4.0.0
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 5
* ^url = "http://hl7.org/fhir/contact-point-system"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:2.16.840.1.113883.4.642.4.72"
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
* ^valueSet = "http://hl7.org/fhir/ValueSet/contact-point-system"
* ^content = #complete
* #phone "Phone" "The value is a telephone number used for voice calls. Use of full international numbers starting with + is recommended to enable automatic dialing support but not required."
* #fax "Fax" "The value is a fax machine. Use of full international numbers starting with + is recommended to enable automatic dialing support but not required."
* #email "Email" "The value is an email address."
* #pager "Pager" "The value is a pager number. These may be local pager numbers that are only usable on a particular pager system."
* #url "URL" "A contact that is not a phone, fax, pager or email address and is expressed as a URL.  This is intended for various institutional or personal contacts including web sites, blogs, Skype, Twitter, Facebook, etc. Do not use for email addresses."
* #sms "SMS" "A contact that can be used for sending an sms message (e.g. mobile phones, some landlines)."
* #other "Other" "A contact that is not a phone, fax, page or email address and is not expressible as a URL.  E.g. Internal mail address.  This SHOULD NOT be used for contacts that are expressible as a URL (e.g. Skype, Twitter, Facebook, etc.)  Extensions may be used to distinguish \"other\" contact types."