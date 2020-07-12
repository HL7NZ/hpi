Alias: $prsr = https://standards.digital.health.nz/ns/hpi-practitionerrole-status-reason

ValueSet : PractitionerRoleStatusReason
Id: hpi-practitionerrole-status-reason
Title: "PractitonerRole status reason"
Description: "The reason for the current status of PractitionerRole"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-practitionerrole-status-reason"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* codes from system https://standards.digital.health.nz/ns/hpi-practitionerrole-status-reason 


CodeSystem:  PractitionerRoleStatusReason
Id: hpi-practitionerRole-status-reason
Title: "PractitonerRole status reason"
Description:  "The reason for the current status of PractitionerRole"

* ^url = "https://standards.digital.health.nz/ns/hpi-practitionerrole-status-reason"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* #enteredInError "enteredInError"
* #duplicate "duplicate"
* #died "died"
* #other "ther"

