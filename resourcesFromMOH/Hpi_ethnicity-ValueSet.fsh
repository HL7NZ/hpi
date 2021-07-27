ValueSet: Hpi_ethnicity
Id: Hpi_ethnicity
Title: "Ethnicity New Zealand Standard Classification 2005 (level 4)"
Description: "Level 4 ethnicity codes"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/ethnic-group-level-4-code"
* ^version = "2.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for ethnicity."
* include codes from system https://standards.digital.health.nz/ns/ethnic-group-level-4-code|2.0
    where code regex /[0-9]{5}/