Alias: $at = https://standards.digital.health.nz/fhir/CodeSystem/aliasType

CodeSystem:  AliasType
Id: aliasType
Title: "Type of Alias"
Description:  "Used in Organization and Location to indicate what is the type of Alias"

* ^url = "https://standards.digital.health.nz/fhir/CodeSystem/aliasType"
* #ta "Trading As" "When an organization is trading under a different name to the Organizations name"
* #local "Local name" "When an orianization or location is known locally be a different name - like a nickname"


ValueSet : LocationAlias
Id: locationAlias
Title: "Location aliases"
Description: "The set of alias types that apply to Locations"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/location-aliasType"
* $at#local "Location Name"


ValueSet : OrganizationAlias
Id: organizationAlias
Title: "Organization aliases"
Description: "The set of alias types that apply to Organizations"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/organization-aliasType"
* $at#local "Location Name"