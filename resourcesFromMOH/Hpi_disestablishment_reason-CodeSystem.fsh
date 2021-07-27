CodeSystem: Hpi_disestablishment_reason
Id: Hpi_disestablishment_reason
Title: "HPI Disestablishment Reason"
Description: "Disestablishment Reason Code (Organisation and Facility)"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://standards.digital.health.nz/ns/hpi-disestablishment-reason"
* ^version = "2.0"
* ^status = #active
* ^experimental = false
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "To be used when an organisation or facility is disestablished."
* ^caseSensitive = false
* ^versionNeeded = true
* ^content = #complete
* ^count = 7
* #ownership "Change of ownership" "The organisation has been sold or taken over."
* #nlo "No longer operating" "The organisation is no longer operating / has ceased trading."
* #removed "Removed from register" "The organisation has been removed from the official register."
* #other "Other" "There is some other reason for the closure of the organisation.  Details are to be documented in the notes."
* #receivership "Receivership" "The organisation is in receivership."
* #liquidation "Liquidation" "The organisation is in liquidation."
* #unknown "Unknown" "The disestablishment reason is not known."