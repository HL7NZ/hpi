CodeSystem: Hpi_disestablishment_reason_10
Id: Hpi_disestablishment_reason_10
Title: "HPI Disestablishment Reason"
Description: "Disestablishment Reason Code (Organisation and Facility)"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://standards.digital.health.nz/ns/hpi-disestablishment-reason"
* ^version = "1.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "To be used when an organisation or facility is disestablished."
* ^caseSensitive = true
* ^versionNeeded = true
* ^content = #complete
* ^count = 6
* #BANKRUPT "Bankrupt"
* #OWNERSHIP "Change of ownership" "The organisation has been sold or taken over"
* #NLO "No longer operating"
* #STRUCK-OFF "Removed from register"
* #OTHER "Other" "There is some other reason for the closure of the organisation.  Details are to be documented in the notes."
* #UNKN "Unknown" "Only for use when the disestablishment reason is not known."