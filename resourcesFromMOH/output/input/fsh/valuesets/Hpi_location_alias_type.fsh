ValueSet: Hpi_location_alias_type
Id: Hpi_location_alias_type
Title: "HPI Alias Type (Location)"
Description: "A coded type for an alias name for facilities."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
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