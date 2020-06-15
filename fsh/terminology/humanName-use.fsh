Alias: $hnu = http://hl7.org/fhir/name-use

ValueSet : HumanNameUse
Id: hpi-humanname-use
Title: "Use value for HumanName by HPI"
Description: "Usage of identifier"

* ^url = "http://hl7.org.nz/fhir/ValueSet/hpi-humanname-use"

* $hnu#usual "Known as/conventional/the one you normally use."
* $hnu#official "The formal name as registered in an official (government) registry, but which name might not be commonly used. May be called 'legal name'."
* $hnu#old "This name is no longer in use (or was never correct, but retained for records)."