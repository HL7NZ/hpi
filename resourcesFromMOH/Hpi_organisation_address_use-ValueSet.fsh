ValueSet: Hpi_organisation_address_use
Id: Hpi_organisation_address_use
Title: "Address Use for Organisation"
Description: "Organisation address use"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-organisation-address-use-code"
* ^version = "2.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the use of an organisation address."
* include codes from system https://standards.digital.health.nz/ns/hpi-address-use|2.0
    where code in "legal,work,old"