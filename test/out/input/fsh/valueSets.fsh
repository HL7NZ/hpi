ValueSet: Nhi_address_not_validated_reason
Id: id-67
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
* include codes from system Nhi_address_not_validated_reason

ValueSet: Hpi_country_code_iso_3166_1
Id: id-68
Title: "ISO 3166-1:2013 (2-alpha country code)"
Description: "2-alpha country codes"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/country-code"
* ^version = "2013"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for country."
* ^compose.inactive = true
* include codes from system urn:iso:std:iso:3166|2013 where code regex /[A-Z]{2}/
* Hpi_country_code#XK

ValueSet: Dhb_code
Id: id-69
Title: "District Health Board Code"
Description: "A coded type for a DHB."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/dhb-code"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-04-20T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for a DHB."
* include codes from system $dhb-code

ValueSet: Domicile_code
Id: id-70
Title: "Domicile Code"
Description: "A coded type for domicile."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/domicile-code"
* ^version = "1.1"
* ^status = #active
* ^experimental = false
* ^date = "2020-04-20T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for domicile"
* include codes from system Domicile_code

ValueSet: Gender
Id: id-71
Title: "Gender"
Description: "A coded type for a person's gender."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/gender-code"
* ^version = "1.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for gender."
* ^compose.inactive = true
* include codes from system https://standards.digital.health.nz/ns/gender-code|2.0

ValueSet: Hpi_additional_authorisation
Id: id-72
Title: "HPI Additional Authorisation"
Description: "A coded type for additional authorisations."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/practitioner-additional-authorisation-code"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for additional authorisations."
* ^compose.inactive = true
* include codes from system Hpi_additional_authorisation

ValueSet: Hpi_ContactPointUse
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

ValueSet: Hpi_contact_type
Id: id-74
Title: "Contact Type"
Description: "Contact type"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-contact-type"
* ^version = "1.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the type of a contact."
* ^compose.inactive = true
* include codes from system https://standards.digital.health.nz/ns/hpi-contact-type|2.0

ValueSet: Hpi_contact_usage
Id: id-75
Title: "Contact Usage"
Description: "Contact usage"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-contact-usage"
* ^version = "1.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the usage of a contact."
* ^compose.inactive = true
* include codes from system https://standards.digital.health.nz/ns/hpi-contact-usage|2.0

ValueSet: Hpi_disestablishment_reason
Id: id-76
Title: "HPI Disestablishment Reason"
Description: "Disestablishment Reason Code (Organisation and Facility)"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-disestablishment-reason"
* ^version = "1.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "To be used when an organisation or facility is disestablished."
* ^compose.inactive = true
* include codes from system https://standards.digital.health.nz/ns/hpi-disestablishment-reason|2.0

ValueSet: Hpi_ethnicity
Id: id-77
Title: "Ethnicity New Zealand Standard Classification 2005 (level 4)"
Description: "Level 4 ethnicity codes"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/ethnic-group-level-4-code"
* ^version = "2.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for ethnicity."
* include codes from system https://standards.digital.health.nz/ns/ethnic-group-level-4-code|2.0
    where code regex /[0-9]{5}/

ValueSet: Hpi_ethnicity_lvl_3
Id: id-78
Title: "HPI 3 digit ethnicity codes"
Description: "HPI 3 digit ethnicity codes as used in the provider person extract"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/ethnic-group-level-3-code"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-10-29T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for ethnicity"
* include codes from system https://standards.digital.health.nz/ns/ethnic-group-level-3-code|1.0

ValueSet: Hpi_facility_address_purpose
Id: id-79
Title: "Address Purpose (Qualifier) for Facility"
Description: "Facility address purpose"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-facility-address-purpose"
* ^version = "1.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the purpose of a facility address."
* ^compose.inactive = true
* include codes from system https://standards.digital.health.nz/ns/hpi-address-purpose|1.0
    where code in "LEGAL,BUSINESS"

ValueSet: Hpi_facility_address_type
Id: id-80
Title: "Address Type for Facility"
Description: "Facility address type"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-facility-address-type"
* ^version = "1.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the type of a facility address."
* ^compose.inactive = true
* include codes from system https://standards.digital.health.nz/ns/hpi-address-type|2.0
    where code in "M,S,P"

ValueSet: Hpi_facility_name_qualifier
Id: id-81
Title: "Name qualifier for Facility"
Description: "Facility name qualifier"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-facility-name-qualifier"
* ^version = "1.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the qualifier of a facility name."
* include codes from system https://standards.digital.health.nz/ns/hpi-name-qualifier|2.0
    where code in "AKA,FORMER,MAORI,SHORT,TRADE-AS,CURRENT"

ValueSet: Hpi_facility_type
Id: id-82
Title: "Facility Type"
Description: "Facility type"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-facility-type"
* ^version = "1.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the type of a facility."
* ^compose.inactive = true
* include codes from system https://standards.digital.health.nz/ns/hpi-facility-type|2.0

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

ValueSet: Hpi_language_code_iso_639_3
Id: id-85
Title: "ISO 639-3:2007 (3-alpha language code)"
Description: "3-alpha language codes"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/language-code"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for language."
* include codes from system urn:iso:std:iso:639:-3|2007 where code regex /[a-z]{3}/

ValueSet: Hpi_legacy_language_code
Id: id-86
Title: "Old HPI two alpha language codes"
Description: "2-alpha language codes"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-legacy-language-code"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-10-29T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for language."
* include codes from system https://standards.digital.health.nz/ns/hpi-legacy-language|1.0

ValueSet: Hpi_legal_entity_type_10
Id: id-87
Title: "Legal Entity Type"
Description: "Legal entity type"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-legal-entity-type"
* ^version = "1.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for organisation legal entity type."
* ^compose.inactive = true
* include codes from system https://standards.digital.health.nz/ns/hpi-legal-entity-type|1.0

ValueSet: Hpi_legal_entity_type
Id: id-88
Title: "Legal Entity Type"
Description: "Legal entity type"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-legal-entity-type"
* ^version = "2.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for organisation legal entity type."
* ^compose.inactive = true
* include codes from system https://standards.digital.health.nz/ns/hpi-legal-entity-type|2.0

ValueSet: Hpi_location_address_use
Id: id-89
Title: "Address Use for Location"
Description: "Location address use"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-location-address-use-code"
* ^version = "2.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the use of a location address."
* include codes from system https://standards.digital.health.nz/ns/hpi-address-use|2.0
    where code in "work,old"

ValueSet: Hpi_location_alias_type
Id: id-90
Title: "HPI Alias Type (Location)"
Description: "A coded type for an alias name for facilities."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/location-alias-type-code"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for an alias name for facilities."
* ^compose.inactive = true
* include codes from system https://standards.digital.health.nz/ns/alias-type-code|1.0
    where code in "aka,old,maori,short,current"

ValueSet: Hpi_location_type
Id: id-91
Title: "HPI Location Type"
Description: "A coded type for types of facilities."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/location-type-code"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "Indicates the type of function performed at the location. HPI description - A code to allow the classification of facility entities."
* include codes from system https://standards.digital.health.nz/ns/location-type-code|1.0

ValueSet: Hpi_legacy_name_type
Id: id-92
Title: "HPI Legacy Name Type"
Description: "A coded type for name type based on NAMTYP 2.0"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-name-type"
* ^version = "2.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "Legacy use only."
* include codes from system https://standards.digital.health.nz/ns/hpi-name-type|2.0

ValueSet: Hpi_nzscc4n99
Id: id-93
Title: "NZSCC4N99 four digit country code"
Description: "4-digit country codes"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-nzscc4n"
* ^version = "1999"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for country."
* ^compose.inactive = true
* include codes from system https://standards.digital.health.nz/ns/nzscc4n|1999

ValueSet: Hpi_organisation_address_purpose
Id: id-94
Title: "Address Purpose (Qualifier) for Organisation"
Description: "Organisation address purpose"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-organisation-address-purpose"
* ^version = "1.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the purpose of an organisation address."
* ^compose.inactive = true
* include codes from system https://standards.digital.health.nz/ns/hpi-address-purpose|1.0
    where code in "LEGAL,SERVICE"

ValueSet: Hpi_organisation_address_type
Id: id-95
Title: "Address Type for Organisation"
Description: "Organisation address type"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-organisation-address-type"
* ^version = "1.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the type of an organisation address."
* ^compose.inactive = true
* include codes from system https://standards.digital.health.nz/ns/hpi-address-type|2.0
    where code in "M,B,P"

ValueSet: Hpi_organisation_address_use
Id: id-96
Title: "Address Use for Organisation"
Description: "Organisation address use"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-organisation-address-use-code"
* ^version = "2.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the use of an organisation address."
* include codes from system https://standards.digital.health.nz/ns/hpi-address-use|2.0
    where code in "legal,work,old"

ValueSet: Hpi_organisation_name_qualifier
Id: id-97
Title: "Name qualifier for Organisation"
Description: "Organisation name qualifier"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-organisation-name-qualifier"
* ^version = "1.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the qualifier of an organisation name."
* include codes from system https://standards.digital.health.nz/ns/hpi-name-qualifier|2.0
    where code in "AKA,FORMER,MAORI,LEGAL,SHORT,TRADE-AS"

ValueSet: Hpi_organisation_type_10
Id: id-98
Title: "Organisation Type"
Description: "Organisation type"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/organisation-type-code"
* ^version = "1.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the type of an organisation"
* include codes from system https://standards.digital.health.nz/ns/organisation-type-code|1.0

ValueSet: Hpi_organisation_type
Id: id-99
Title: "Organisation Type"
Description: "Organisation type"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/organisation-type-code"
* ^version = "1.1"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the type of an organisation"
* include codes from system https://standards.digital.health.nz/ns/organisation-type-code|1.1

ValueSet: Hpi_organization_alias_type
Id: id-100
Title: "HPI Alias Type (Organization)"
Description: "A coded type for an alias name for organisation."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/organization-alias-type-code"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for an alias name for organisation."
* ^compose.inactive = true
* include codes from system https://standards.digital.health.nz/ns/alias-type-code|1.0
    where code in "aka,old,maori,legal,short,trade-as"

ValueSet: Hpi_practitioner_role
Id: id-101
Title: "PractitonerRole code"
Description: "The role a practitioner holds."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/practitioner-role-code"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-11-01T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "The role a practitioner holds."
* include codes from system http://www.abs.gov.au/ausstats/abs@.nsf/mf/1220.0|1.2
* include codes from system http://snomed.info/sct/223366009|20190131

ValueSet: Hpi_practitioner_role_status_reason
Id: id-102
Title: "PractitonerRole status reason"
Description: "The reason for the current status of PractitionerRole."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-practitioner-role-status-reason-code"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-11-01T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "The reason for the current status of PractitionerRole."
* include codes from system Hpi_practitioner_role_status_reason

ValueSet: Hpi_registration_status_legacy
Id: id-103
Title: "HPI Registration Status"
Description: "A coded type for professional registration status."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-registration-status"
* ^version = "1.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for professional registration status."
* ^compose.inactive = true
* include codes from system https://standards.digital.health.nz/ns/hpi-registration-status|1.0

ValueSet: Hpi_registration_status
Id: id-104
Title: "HPI Registration Status"
Description: "A coded type for professional registration status."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/practitioner-registration-status-code"
* ^version = "2.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-10-16T00:00:00+12:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for professional registration status."
* include codes from system https://standards.digital.health.nz/ns/practitioner-registration-status-code|2.0
   

ValueSet: Hpi_registration_type_legacy
Id: id-105
Title: "HPI Registration Type"
Description: "A coded type for professional registrations."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-registration-type"
* ^version = "1.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for professional registrations."
* ^compose.inactive = true
* include codes from system https://standards.digital.health.nz/ns/hpi-registration-type|1.0

ValueSet: Hpi_registration_type
Id: id-106
Title: "HPI Registration Type"
Description: "A coded type for professional registrations."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/practitioner-registration-authority-code"
* ^version = "2.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for professional registrations."
* include codes from system https://standards.digital.health.nz/ns/practitioner-registration-authority-code|2.0
   

ValueSet: Hpi_scope_of_practice
Id: id-107
Title: "HPI Scope of Practice"
Description: "A coded type for professional scope of practice."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/practitioner-scope-of-practice-code"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for professional scope of practice."
* ^compose.inactive = true
* include codes from system $practitioner-scope-of-practice-code

ValueSet: Hpi_name_prefix
Id: id-108
Title: "HPI Name Prefix"
Description: "A coded type for name prefixes."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/name-prefix-code"
* ^version = "2.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "Controlled value set to be used in the name prefix field."
* include codes from system https://standards.digital.health.nz/ns/name-prefix-code|2.0

ValueSet: Nhi_address_type
Id: id-109
Title: "Address Type for Patient"
Description: "Patient address type"
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/vs/nhi-address-type"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the type of a patient address."
* include codes from system https://standards.digital.health.nz/cs/nhi-address-type|1.0

ValueSet: Nhi_citizenship_source
Id: id-110
Title: "NZ Citizenship Information Source"
Description: "A coded type for the source of information for NZ citizenship."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/vs/nhi-citizenship-source"
* ^version = "1.1"
* ^status = #active
* ^experimental = false
* ^date = "2020-04-20T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for the source of information for NZ citizenship."
* include codes from system Nhi_name_source where code in "DIA,PPRT,NZCT,BRCT,NPRF"

ValueSet: Nhi_citizenship_status
Id: id-111
Title: "Citizenship or Residency Status"
Description: "A coded type for the status of citizenship/residency."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/vs/nhi-citizenship-status"
* ^version = "1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-04-20T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for the status of citizenship/residency."
* include codes from system Nhi_citizenship_status

ValueSet: Nhi_country_of_birth_source
Id: id-112
Title: "Country of Birth Information Source"
Description: "A coded type for the source of information for a birth country."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/vs/nhi-country-of-birth-source"
* ^version = "1.2"
* ^status = #active
* ^experimental = false
* ^date = "2020-04-20T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for the source of information for a birth country."
* include codes from system Nhi_name_source
    where code in "BRCT,BREG,NPRF,NZCI,NZCT,NZET,NZRT,OTHR,PPRT,NZPV,NZTV"

ValueSet: Nhi_date_of_birth_source
Id: id-113
Title: "Date of Birth Information Source"
Description: "A coded type for the source of information for a birth date."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/vs/nhi-date-of-birth-source"
* ^version = "1.2"
* ^status = #active
* ^experimental = false
* ^date = "2020-04-20T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for the source of information for a birth date."
* include codes from system Nhi_name_source
    where code in "BRCT,BREG,HL7,MIGR,NPRF,NZCI,NZCT,NZET,NZRT,OTHR,PPRT,NZPV,NZTV"

ValueSet: Nhi_date_of_death_source
Id: id-114
Title: "Date of Death Information Source"
Description: "A coded type for the source of information for a death date."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/vs/nhi-date-of-death-source"
* ^version = "1.2"
* ^status = #active
* ^experimental = false
* ^date = "2020-04-20T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for the source of of information for a death date."
* include codes from system Nhi_name_source where code in "DREG,MIGR,OSEA,HL7,MCCOD,CORONER,OSEAOFF"

ValueSet: Nhi_name_source
Id: id-115
Title: "Name Information Source"
Description: "A coded type for the source of information for a name."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/vs/nhi-name-source"
* ^version = "1.3"
* ^status = #active
* ^experimental = false
* ^date = "2020-04-20T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for the source of information for a name."
* ^compose.inactive = true
* include codes from system Nhi_name_source
    where code in "BREG,BRCT,NZCT,PPRT,NZCI,NZRT,NZET,OTHR,NPRF,NZPV,NZTV,NZMC,NZCU,NZNC,NZDL,CSC"

ValueSet: Nhi_residency_source
Id: id-116
Title: "NZ Residency Information Source"
Description: "A coded type for the source of information for NZ residency."
* ^meta.profile[0] = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/vs/nhi-residency-source"
* ^version = "1.2"
* ^status = #active
* ^experimental = false
* ^date = "2020-04-20T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for the source of information for NZ residency."
* include codes from system Nhi_name_source where code in "MIGR,HL7,PPRT,NPRF,INZ,NZPV,NZTV"

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
* ^url = "http://hl7.org/fhir/ValueSet/address-type"
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
* ^url = "http://hl7.org/fhir/ValueSet/address-use"
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
* ^url = "http://hl7.org/fhir/ValueSet/administrative-gender"
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
* ^url = "http://hl7.org/fhir/ValueSet/contact-point-system"
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
* ^url = "http://hl7.org/fhir/ValueSet/contact-point-use"
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

ValueSet: IdentifierTypeCodes
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
* ^url = "http://hl7.org/fhir/ValueSet/identifier-type"
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
* ^url = "http://hl7.org/fhir/ValueSet/identifier-use"
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
* ^url = "http://hl7.org/fhir/ValueSet/name-use"
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