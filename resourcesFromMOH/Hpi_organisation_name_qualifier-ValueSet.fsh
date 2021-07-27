ValueSet: Hpi_organisation_name_qualifier
Id: Hpi_organisation_name_qualifier
Title: "Name qualifier for Organisation"
Description: "Organisation name qualifier"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-organisation-name-qualifier"
* ^version = "1.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the qualifier of an organisation name."
* include codes from system https://standards.digital.health.nz/ns/hpi-name-qualifier|2.0
    where code in "AKA,FORMER,MAORI,LEGAL,SHORT,TRADE-AS"