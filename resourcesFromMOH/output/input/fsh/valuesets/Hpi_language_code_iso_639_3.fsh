ValueSet: Hpi_language_code_iso_639_3
Id: Hpi_language_code_iso_639_3
Title: "ISO 639-3:2007 (3-alpha language code)"
Description: "3-alpha language codes"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/language-code"
* ^version = "1.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for language."
* include codes from system urn:iso:std:iso:639:-3|2007 where code regex /[a-z]{3}/