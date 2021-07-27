ValueSet: Nhi_country_of_birth_source
Id: Nhi_country_of_birth_source
Title: "Country of Birth Information Source"
Description: "A coded type for the source of information for a birth country."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/vs/nhi-country-of-birth-source"
* ^version = "1.2"
* ^status = #active
* ^experimental = false
* ^date = "2020-04-20T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for the source of information for a birth country."
* include codes from system Nhi_name_source
    where code in "BRCT,BREG,NPRF,NZCI,NZCT,NZET,NZRT,OTHR,PPRT,NZPV,NZTV"