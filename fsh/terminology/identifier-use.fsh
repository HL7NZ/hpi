Alias: $ie = http://hl7.org/fhir/identifier-use

ValueSet : IdentifierUse
Id: hpi-identifier-use
Title: "Usage of identifier"
Description: "Identifier USE values in HPI"

* ^url = "https://standards.digital.health.nz/fhir/ValueSet/hpi-identifier-use-code"
* ^jurisdiction.coding = urn:iso:std:iso:3166#NZ

* $ie#official "A 'live' identifier that is currently in use"
* $ie#old "An identifier that has been linked to another and considered dormant"


