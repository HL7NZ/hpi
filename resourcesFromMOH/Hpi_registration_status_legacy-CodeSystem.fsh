CodeSystem: Hpi_registration_status_legacy
Id: Hpi_registration_status_legacy
Title: "HPI Registration Status"
Description: "The code list represents the current practicing status of the Provider Person as per their registration with an RA or a health worker source."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://standards.digital.health.nz/ns/hpi-registration-status"
* ^version = "1.0"
* ^status = #retired
* ^experimental = true
* ^date = "2020-02-24T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "The code list represents the current practicing status of the Provider Person as per their registration with an RA or a health worker source."
* ^caseSensitive = false
* ^valueSet = "https://standards.digital.health.nz/fhir/ValueSet/hpi-registration-status"
* ^versionNeeded = false
* ^content = #complete
* ^count = 4
* #C "Current" "A provider who holds or is deemed to hold a current practising certificate."
* #I "Inactive" "A provider who is not practising."
* #R "Removed" "A provider who has been removed from the register – this includes voluntary removal, de-registration and deceased."
* #S "Suspended" "A provider who is suspended from practising by a Responsible Authority."