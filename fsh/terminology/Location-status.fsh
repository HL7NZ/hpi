Alias: $ls = http://hl7.org/fhir/location-status

ValueSet : LocationStatus
Id: location-status
Title: "Status of Loaction - is it still in use"
Description: "Status of Loaction - is it still in use"

* ^url = "http://hl7.org.nz/fhir/ValueSet/hpi-location-status"

* $ls#active "The location is operational."
* $ls#inactive "The location is no longer used."