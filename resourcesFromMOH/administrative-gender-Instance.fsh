Instance: administrative-gender
InstanceOf: CodeSystem
Usage: #definition
* meta.lastUpdated = "2019-11-01T09:29:23.356+11:00"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* extension[=].valueCode = #pa
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension[=].valueCode = #normative
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* extension[=].valueInteger = 5
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* extension[=].valueCode = #4.0.0
* url = "http://hl7.org/fhir/administrative-gender"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:oid:2.16.840.1.113883.4.642.4.2"
* version = "4.0.1"
* name = "AdministrativeGender"
* title = "AdministrativeGender"
* status = #active
* experimental = false
* date = "2019-11-01T09:29:23+11:00"
* description = "The gender of a person used for administrative purposes."
* caseSensitive = true
* valueSet = "http://hl7.org/fhir/ValueSet/administrative-gender"
* content = #complete
* concept[0].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString = "Male"
* concept[=].code = #male
* concept[=].display = "Male"
* concept[=].definition = "Male."
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString = "Female"
* concept[=].code = #female
* concept[=].display = "Female"
* concept[=].definition = "Female."
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString = "The administrative gender is a value other than male/female/unknown. Where this value is selected, systems may often choose to include an extension with the localized more specific value."
* concept[=].code = #other
* concept[=].display = "Other"
* concept[=].definition = "Other."
* concept[+].extension.url = "http://hl7.org/fhir/StructureDefinition/codesystem-concept-comments"
* concept[=].extension.valueString = "A proper value is applicable, but not known.  Usage Notes: This means the actual value is not known. If the only thing that is unknown is how to properly express the value in the necessary constraints (value set, datatype, etc.), then the OTH or UNC flavor should be used. No properties should be included for a datatype with this property unless:  Those properties themselves directly translate to a semantic of \"unknown\". (E.g. a local code sent as a translation that conveys 'unknown') Those properties further qualify the nature of what is unknown. (E.g. specifying a use code of \"H\" and a URL prefix of \"tel:\" to convey that it is the home phone number that is unknown.)"
* concept[=].code = #unknown
* concept[=].display = "Unknown"
* concept[=].definition = "Unknown."