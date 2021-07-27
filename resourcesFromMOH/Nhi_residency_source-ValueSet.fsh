ValueSet: Nhi_residency_source
Id: Nhi_residency_source
Title: "NZ Residency Information Source"
Description: "A coded type for the source of information for NZ residency."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/vs/nhi-residency-source"
* ^version = "1.2"
* ^status = #active
* ^experimental = false
* ^date = "2020-04-20T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for the source of information for NZ residency."
* include codes from system Nhi_name_source where code in "MIGR,HL7,PPRT,NPRF,INZ,NZPV,NZTV"