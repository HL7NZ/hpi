ValueSet: Hpi_facility_address_type
Id: Hpi_facility_address_type
Title: "Address Type for Facility"
Description: "Facility address type"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-facility-address-type"
* ^version = "1.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the type of a facility address."
* ^compose.inactive = true
* include codes from system https://standards.digital.health.nz/ns/hpi-address-type|2.0
    where code in "M,S,P"