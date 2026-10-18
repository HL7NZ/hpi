Instance: Practitioner-update-educational-qualification
InstanceOf: OperationDefinition
Description: "A custom operation which adds, amends, or removes a practitioner's educational qualifications."
Usage: #definition

* url = "https://hpi-ig.hip.digital.health.nz/OperationDefinition/practitioner-update-educational-qualification"
* version = "1.0.0"
* name = "Update Educational Qualification"
* title = "Updates a practitioner's educational qualifications"
* status = #draft
* kind = #operation
* experimental = false
* date = "2026-10-07T00:00:00+12:00"
* publisher = "Te Whatu Ora"
* contact.telecom.system = #email
* contact.telecom.value = "integration@health.govt.nz"
* description = "Adds, amends, or removes educational qualifications from a Practitioner record by applying one or more validated qualification change items."
* affectsState = true
* code = #"practitioner-update-educational-qualification"
* comment = "The cpn and version-id are validated, the caller context is checked, and each repeated educational-qualification item is validated and applied before the Practitioner record is updated."
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
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The Responsible Authority identifier for the caller when an RA context is in use"
* parameter[=].type = #string

* parameter[+].name = #"educational-qualification"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "One or more educational qualification change items to add, amend or remove"
* parameter[=].type = #string

* parameter[+].name = #"educational-qualification.action"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The action to apply to the qualification item: add, amend or remove"
* parameter[=].type = #code

* parameter[+].name = #"educational-qualification.id"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The existing HPI educational qualification identifier. Required for amend and remove operations."
* parameter[=].type = #string

* parameter[+].name = #"educational-qualification.fullname"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The full name of the educational qualification. Required for add and amend"
* parameter[=].type = #string

* parameter[+].name = #"educational-qualification.shortname"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "A short form of the qualification name"
* parameter[=].type = #string

* parameter[+].name = #"educational-qualification.year"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The year the qualification was awarded. Required for add and amend."
* parameter[=].type = #date

* parameter[+].name = #"educational-qualification.institution"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The institution or training provider that issued the qualification. Required for add and amend."
* parameter[=].type = #string

* parameter[+].name = #"educational-qualification.city"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The city where the institution is located. Required for add and amend."
* parameter[=].type = #string

* parameter[+].name = #"educational-qualification.country"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The country where the institution is located, using a valid ISO alpha-2 country code. Required for add and amend."
* parameter[=].type = #code

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
