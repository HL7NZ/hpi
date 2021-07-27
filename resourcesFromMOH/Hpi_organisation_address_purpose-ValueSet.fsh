ValueSet: Hpi_organisation_address_purpose
Id: Hpi_organisation_address_purpose
Title: "Address Purpose (Qualifier) for Organisation"
Description: "Organisation address purpose"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
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