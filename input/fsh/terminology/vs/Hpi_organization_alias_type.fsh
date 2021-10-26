ValueSet: Hpi_organization_alias_type
Id: Hpi-organization-alias-type
Title: "HPI Alias Type (Organization)"
Description: "A coded type for an alias name for organisation."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://nzhts.digital.health.nz/fhir/ValueSet/organization-alias-type-code"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for an alias name for organisation."
* ^compose.inactive = true
* include codes from system https://standards.digital.health.nz/ns/alias-type-code|1.0
    where code in "aka,old,maori,legal,short,trade-as"