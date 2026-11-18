Instance: Practitioner-update-personal-details
InstanceOf: OperationDefinition
Description: "Updates a health provider's gender, ethnicity and communication languages."
Usage: #definition

* url = "https://hpi-ig.hip.digital.health.nz/OperationDefinition/practitioner-update-personal-details"
* version = "1.0.0"
* name = "Update Personal Details"
* title = "Updates a health provider's personal details."
* status = #draft
* kind = #operation
* experimental = false
* date = "2026-11-18"
* publisher = "Te Whatu Ora"
* contact.telecom.system = #email
* contact.telecom.value = "integration@health.govt.nz"
* description = "Updates Practitioner gender, ethnicity and communication languages. Omitted values are preserved; supplied ethnicity and language values replace their complete respective collections."
* affectsState = true
* code = #"practitioner-update-personal-details"
* resource = #Practitioner
* system = false
* type = true
* instance = false

* parameter[+].name = #"cpn"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The HPI person identifier (CPN)."

* parameter[+].name = #"version-id"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The current Practitioner version identifier."

* parameter[+].name = #"ra-identifier"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The RA identifier; required for an RA update."

* parameter[+].name = #"gender"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #code
* parameter[=].documentation = "FHIR AdministrativeGender code. If supplied, replaces the current Practitioner.gender."

* parameter[+].name = #"ethnicity"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "6"
* parameter[=].type = #code
* parameter[=].documentation = "An HPI-bound ethnicity code. Supplied values replace the complete current ethnicity set."

* parameter[+].name = #"language"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "10"
* parameter[=].type = #code
* parameter[=].documentation = "An HPI-bound language code. Supplied values replace the complete current language set."

* parameter[+].name = #"return"
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Practitioner
* parameter[=].documentation = "The updated Practitioner resource."
