Instance:   HpiPractitionerRaIdentifier
InstanceOf: SearchParameter
Title:          "Search on Registration Authority identifier"
Description:    "Search the Registration Authority identifier"
Usage: #definition

* jurisdiction.coding = urn:iso:std:iso:3166#NZ

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Search on Registration Authority identifier</div>"

* url = "http://hl7.org.nz/fhir/hpi/SearchParameter/hpi-practitioner-raidentifier"
* name = "HpiPractitionerBirthdate"

* status = #draft
* description = "Allows a practitioner to be searched by the identifier supplied by the RA (Registration Authority)"
* code = #birthdate
* base = #Practitioner
* type = #token
