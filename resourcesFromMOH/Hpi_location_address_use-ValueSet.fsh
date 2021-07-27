ValueSet: Hpi_location_address_use
Id: Hpi_location_address_use
Title: "Address Use for Location"
Description: "Location address use"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-location-address-use-code"
* ^version = "2.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded value for the use of a location address."
* include codes from system https://standards.digital.health.nz/ns/hpi-address-use|2.0
    where code in "work,old"