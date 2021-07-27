CodeSystem: Nhi_citizenship_status
Id: Nhi_citizenship_status
Title: "Citizenship or Residency Status"
Description: "A coded type for the status of citizenship/residency."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://standards.digital.health.nz/ns/nhi-citizenship-status"
* ^version = "1.0"
* ^status = #draft
* ^experimental = false
* ^date = "2020-04-20T00:00:00+13:00"
* ^publisher = "New Zealand Ministry of Health"
* ^purpose = "To convey whether a petient is citizen or resident of a country"
* ^caseSensitive = false
* ^valueSet = "https://standards.digital.health.nz/vs/nhi-citizenship-status"
* ^versionNeeded = true
* ^content = #complete
* ^count = 2
* #RESIDENT "Resident" "This patient is a resident (temporary or permanent)."
* #CITIZEN "Citizen" "This patient is a citizen."