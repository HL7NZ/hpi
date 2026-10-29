Instance: Practitioner-update-registration
InstanceOf: OperationDefinition
Description: "A custom operation which updates a practitioner's registration status, APC, scope-of-practice and conditions."
Usage: #definition

* url = "https://hpi-ig.hip.digital.health.nz/OperationDefinition/practitioner-update-registration"
* version = "1.0.0"
* name = "Update Registration"
* title = "Updates a practitioner's registration details"
* status = #draft
* kind = #operation
* experimental = false
* date = "2026-10-07T00:00:00+12:00"
* publisher = "Te Whatu Ora"
* contact.telecom.system = #email
* contact.telecom.value = "integration@health.govt.nz"
* description = "Updates a practitioner's registration status, annual practising certificate details, scope of practice, additional authorisations and conditions."
* affectsState = true
* code = #"practitioner-update-registration"
* comment = "The cpn and version-id are validated, the caller RA context is checked, and the registration payload is validated and merged before the Practitioner record is updated."
* resource = #Practitioner
* system = false
* type = false
* instance = true

* parameter[+].name = #"cpn"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The live hpi-person-id (CPN)"
* parameter[=].type = #string

* parameter[+].name = #"version-id"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The current Practitioner record version number"
* parameter[=].type = #string

* parameter[+].name = #"ra-identifier"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The Responsible Authority identifier for the caller"
* parameter[=].type = #string

* parameter[+].name = #"registration-initial-date"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The initial registration date for the practitioner, if supplied"
* parameter[=].type = #date

* parameter[+].name = #"registration-status-code"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "A registration status code and period supplied as a FHIR parameter part"
* parameter[=].type = #string

* parameter[+].name = #"period"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The APC validity period"
* parameter[=].type = #Period

* parameter[+].name = #"scope-of-practice"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "One or more scope of practice entries containing a code and period"
* parameter[=].type = #string

* parameter[+].name = #"additional-authorisation"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "One or more additional authorisation entries containing a code and period"
* parameter[=].type = #string

* parameter[+].name = #"condition-on-practice"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "One or more practice condition entries containing a description and period"
* parameter[=].type = #string

* parameter[+].name = #"Practitioner"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The updated Practitioner resource"
* parameter[=].type = #Practitioner

* parameter[+].name = #"failure"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Error response"
* parameter[=].type = #OperationOutcome
