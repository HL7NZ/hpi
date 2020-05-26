Alias: $at = https://standards.digital.health.nz/fhir/CodeSystem/aliasType

CodeSystem:  AliasType
Id: aliasType
Title: "Type of Alias"
Description:  "Used in Organization and Location to indicate what is the type of Alias"

* ^url = "https://standards.digital.health.nz/fhir/CodeSystem/aliasType"
* #aka "Aka" "The name by which the organisation or facility is also known as."
* #legal "Legal name" "The name as recorded in the official register eg Register of Companies."
* #maori "Maori" "The Mâori name of the organisation or facility."
* #short "Short" "An abbreviated name by which the organisation or facility is known."

ValueSet : LocationAlias
Id: locationAlias
Title: "Location aliases"
Description: "The set of alias types that apply to Locations"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/location-aliasType"
* $at#aka "Aka"
* $at#maori "Maori"
* $at#short "Short"

ValueSet : OrganizationAlias
Id: organizationAlias
Title: "Organization aliases"
Description: "The set of alias types that apply to Organizations"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/organization-aliasType"
* $at#aka "Aka"
* $at#maori "Maori"
* $at#short "Short"
* $at#legal "Legal"