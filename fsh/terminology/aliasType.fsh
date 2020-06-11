Alias: $at = https://standards.digital.health.nz/cs/alias-type

CodeSystem:  AliasType
Id: alias-type
Title: "Type of Alias"
Description:  "Used in Organization and Location to indicate what is the type of Alias"

* ^url = "https://standards.digital.health.nz/cs/alias-type"
* #aka "Aka" "The name by which the organisation or facility is also known as."
* #legal "Legal name" "The name as recorded in the official register eg Register of Companies."
* #maori "Maori" "The Mâori name of the organisation or facility."
* #short "Short" "An abbreviated name by which the organisation or facility is known."

ValueSet : LocationAliasType
Id: location-alias-type
Title: "Location alias types"
Description: "The set of alias types that apply to Locations"

* ^url = "http://hl7.org.nz/fhir/ValueSet/location-alias-type"

* $at#aka "Aka"
* $at#maori "Maori"
* $at#short "Short"

ValueSet : OrganizationAliasType
Id: organization-alias-type
Title: "Organization alias types"
Description: "The set of alias types that apply to Organizations"

* ^url = "http://hl7.org.nz/fhir/ValueSet/organization-alias-type"

* $at#aka "Aka"
* $at#maori "Maori"
* $at#short "Short"
* $at#legal "Legal"