CodeSystem: Hpi_contact_usage
Id: Hpi_contact_usage
Title: "OrgFac Contact Usage"
Description: "A coded type for organisation/facility contact usage."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://standards.digital.health.nz/ns/hpi-contact-usage"
* ^version = "2.0"
* ^status = #retired
* ^experimental = false
* ^date = "2020-04-20T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "A coded type for organisation/facility contact usage."
* ^caseSensitive = false
* ^versionNeeded = true
* ^content = #complete
* ^count = 8
* #B "Business" "A general business contact for the organisation."
* #B-OLD "Business (Inactive)" "This contact point is no longer in use (or was never correct, but retained for records)."
* #E "Emergency" "A general emergency contact for the organisation."
* #H "HealthLink" "The HealthLink address number used for messaging through HealthLink  (To be retired)."
* #P "Personal" "A personal contact for the practitioner or health worker."
* #C "Connected Health" "Connected Health."
* #T "Temporary" "A temporary contact point. The period can provide more detailed information."
* #M "Mobile" "Mobile."