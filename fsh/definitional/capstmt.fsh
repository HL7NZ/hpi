
Instance:   HpiCapabilityStatement
InstanceOf: CapabilityStatement
Title:          "CapabilityStatement"
Description:    "Represents API exposed by HPI"
Usage: #definition

* text.status = #additional
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>HPI capabilities</div>"

* name = "HPI_CapabilityStatement"
* title = "Capability Statement describing HPI FHIR APIs"
* description = """
This is the computable resource that describes the RESTful endpoint
"""

* date = "2020-04-01"
* status = #draft
* kind = #instance
* fhirVersion = #4.0.1
* format = #json

* implementation.description = "The HIP endpoint"
* implementation.url = "http://moh.org.nz/hpi/fhir"

* rest.mode = #server

// ============== The Practitioner endpoint
* rest.resource.type = #Practitioner
* rest.resource.supportedProfile = "http://hl7.org.nz/healthalliance/HpiPractitioner"
* rest.resource.documentation = """
Practitioner query

"""

//read by id
* rest.resource.interaction.code = #read
* rest.resource.interaction.documentation = "Used to retrieve a Practitioner resource by Id. Note that this is ***not*** the same as the NHI identifier"

//search by various parameters
* rest.resource.interaction[0].code = #search-type
* rest.resource.interaction[0].documentation = "Gender and birthDate are required in all searches"

//Search by name. todo - may need add docs about dependencies - eg dob as well
* rest.resource.searchParam.name = "name"
* rest.resource.searchParam.type = #string
* rest.resource.searchParam.definition = "http://hl7.org/fhir/SearchParameter/Practitioner-name"
* rest.resource.searchParam.documentation = "Not case sensitive"

//identifier 
* rest.resource.searchParam[1].name = "identifier"
* rest.resource.searchParam[1].type = #token
* rest.resource.searchParam[1].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-identifier"
* rest.resource.searchParam[1].documentation = "Will only return active identifiers"

//family 
* rest.resource.searchParam[2].name = "family"
* rest.resource.searchParam[2].type = #string
* rest.resource.searchParam[2].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-family"
//* rest.resource.searchParam[2].documentation = ""

//given
* rest.resource.searchParam[3].name = "given"
* rest.resource.searchParam[3].type = #string
* rest.resource.searchParam[3].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-given"
//* rest.resource.searchParam[3].documentation = ""

//gender 
* rest.resource.searchParam[4].name = "gender"
* rest.resource.searchParam[4].type = #token
* rest.resource.searchParam[4].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-gender"
//* rest.resource.searchParam[4].documentation = ""

//birthdate 
* rest.resource.searchParam[5].name = "birthdate"
* rest.resource.searchParam[5].type = #token
//* rest.resource.searchParam[5].definition = ""
* rest.resource.searchParam[5].documentation = "This is a custom search"

//ra-identifier 
* rest.resource.searchParam[6].name = "ra-identifier"
* rest.resource.searchParam[6].type = #token
//* rest.resource.searchParam[6].definition = ""
* rest.resource.searchParam[6].documentation = "This is a custom search. It queries on the identifier suplied by the Registartion Authority (Practitioner.qualification.identifier)"



// ============== The PractitionerRole endpoint
* rest.resource[1].type = #PractitionerRole
* rest.resource[1].supportedProfile = "http://hl7.org.nz/healthalliance/HpiPractitionerRole"
* rest.resource[1].documentation = """
PractitionerRole query

"""

* rest.resource[1].searchParam[0].name = "practitioner"
* rest.resource[1].searchParam[0].type = #reference
//* rest.resource[1].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-gender"
* rest.resource[1].searchParam[0].documentation = "Given a Practitoner id, returns the PractitonerRoles associated with that id"

* rest.resource[1].searchParam[1].name = "organization"
* rest.resource[1].searchParam[1].type = #reference
//* rest.resource[1].searchParam[1].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-gender"
* rest.resource[1].searchParam[1].documentation = "Given a Organization id, returns the PractitonerRoles associated with that id"

* rest.resource[1].searchParam[2].name = "location"
* rest.resource[1].searchParam[2].type = #token
//* rest.resource[1].searchParam[2].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-gender"
* rest.resource[1].searchParam[2].documentation = "Given a Location id, returns the PractitonerRoles associated with that id"

* rest.resource[1].searchParam[3].name = "identifier"
* rest.resource[1].searchParam[3].type = #token
//* rest.resource[1].searchParam[3].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-gender"
* rest.resource[1].searchParam[3].documentation = "Returns PractitionerRoles based on identifier"

* rest.resource[1].searchParam[4].name = "role"
* rest.resource[1].searchParam[4].type = #token
//* rest.resource[1].searchParam[4].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-gender"
* rest.resource[1].searchParam[4].documentation = "Returns PractitionerRoles based on role"

* rest.resource[1].searchInclude[0] = "practitioner"
* rest.resource[1].searchInclude[1] = "organization"
* rest.resource[1].searchInclude[2] = "location"

