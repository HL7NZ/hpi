Alias: $prs = https://standards.digital.health.nz/cs/practitioner-registration-status

ValueSet: PractitionerRegistrationStatus
Id: practitioner-registration-status
Title: "Registration Status of Practitioners"
Description: "The code list represents the current practicing status of the Provider Person as per their registration with an RA or a health worker source."

* ^url = http://hl7.org.nz/fhir/ValueSet/practitioner-registration-status

* $prs#current "A provider who holds or is deemed to hold a current practising certificate."
* $prs#inactive "A provider who is not practising"
* $prs#removed "A provider who has been removed from the register – this includes voluntary removal, de-registration and deceased"
* $prs#suspended "A provider who is suspended from practising by a Responsible Authority"

* codes from system https://standards.digital.health.nz/cs/practitioner-registration-status



CodeSystem: PractitionerRegistrationStatus
Id: practitioner-registration-status
Title: "Registration Status of Practitioners"
Description: "The code list represents the current practicing status of the Provider Person as per their registration with an RA or a health worker source."

* ^url = https://standards.digital.health.nz/cs/practitioner-registration-status

* #current "Current"
* #inactive "Inactive"
* #removed "Removed"
* #suspended "Suspended"

