Instance: Practitioner-update-core
InstanceOf: OperationDefinition
Description: "A custom operation which updates a health provider's name, birthdate and death-date."
Usage: #definition

* url = "https://hpi-ig.hip.digital.health.nz/OperationDefinition/practitioner-update-core"
* version = "1.0.0"
* name = "Update Core "
* title = "Updates a health provider's name, birthdate and death-date."
* status = #draft
* kind = #operation
* experimental = false
* date = "2023-06-12T12:47:40+10:00"
* publisher = "Te Whatu Ora"
* contact.telecom.system = #email
* contact.telecom.value = "integration@health.govt.nz"
* description = "Updates a health provider's name, birthdate, death-date"
* affectsState = true
// need a value set for our custom operation names
* code = #"practitioner-update-core"
* comment = "The cpn is validated, the versionId is validated. If all request parameters are valid If all request parameters are valid, then the parameter is replaced on the record"
* resource = #Practitioner
* system = false
* type = false
* instance = true

* parameter[+].name = #"cpn"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The hpi-person-id (cpn)"
* parameter[=].type = #string

* parameter[+].name = #"version-id"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The current Practitioner record version number"


* parameter[+].name = #"ra-identifier"
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The RA identifier" 


* parameter[+].name = #"name"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "An update replaces the full set of name attributes (use, prefix, given, family)"  

* parameter[+].name = #"death-date"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The Provider's date of death, can only be set by an admin user" 

* parameter[+].name = #"birth-date"
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[=].documentation = "The Provider's birthdate, can only be set by an admin user" 


* parameter[+].name = #"Practitioner"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Practitioner
* parameter[=].documentation = "The updated Practitioner resource" 

* parameter[+].name = #"failure"
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #OperationOutcome
* parameter[=].documentation = "Error response" 

