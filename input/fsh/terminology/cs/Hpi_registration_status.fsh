CodeSystem: Hpi_registration_status
Id: Hpi-registration-status
Title: "HPI Registration Status"
Description: "The code list represents the current practicing status of the Provider Person as per their registration with an RA or a health worker source."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://standards.digital.health.nz/ns/practitioner-registration-status-code"
* ^version = "2.0"
* ^status = #draft
* ^experimental = true
* ^date = "2020-10-16T00:00:00+12:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "The code list represents the current practicing status of the Provider Person as per their registration with an RA or a health worker source."
* ^caseSensitive = false
* ^valueSet = "https://standards.digital.health.nz/fhir/ValueSet/practitioner-registration-status-code"
* ^versionNeeded = false
* ^content = #complete
* ^count = 4
* #current "Current" "A provider who holds or is deemed to hold a current practising certificate."
* #inactive "Inactive" "A provider who is not practising."
* #removed "Removed" "A provider who has been removed from the register – this includes voluntary removal, de-registration and deceased."
* #suspended "Suspended" "A provider who is suspended from practising by a Responsible Authority."