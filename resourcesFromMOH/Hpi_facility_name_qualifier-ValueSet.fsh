ValueSet: Hpi_facility_name_qualifier
Id: Hpi_facility_name_qualifier
Title: "Name qualifier for Facility"
Description: "Facility name qualifier"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-facility-name-qualifier"
* ^version = "1.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the qualifier of a facility name."
* include codes from system https://standards.digital.health.nz/ns/hpi-name-qualifier|2.0
    where code in "AKA,FORMER,MAORI,SHORT,TRADE-AS,CURRENT"