
Instance:   HpiCapabilityStatement
InstanceOf: CapabilityStatement
Title:          "CapabilityStatement"
Description:    "Represents API exposed by HPI"
Usage: #definition

//* jurisdiction.coding = urn:iso:std:iso:3166#NZ

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

* implementation.description = "The HPI endpoint"
* implementation.url = "https://api.hip.digital.health.nz/fhir/hpi/v1/"

* rest.mode = #server

// ============== The Practitioner endpoint

/* #region Practitioner */


* rest.resource.type = #Practitioner
* rest.resource.supportedProfile = "http://hl7.org.nz/fhir/StructureDefinition/hpi-practitioner"
* rest.resource.documentation = """
Practitioner query

"""

//read by id
* rest.resource.profile = "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitioner" 
* rest.resource.interaction.code = #read
* rest.resource.interaction.documentation = "Used to retrieve a Practitioner resource by Id."

//search by various parameters
* rest.resource.interaction[1].code = #search-type
* rest.resource.interaction[1].documentation = "Queries against the Practitioner using name and other search parameters. Will return a Bundle (even if there are no matching resources)."

/* not in the fisrt release
* rest.resource.interaction[2].code = #create
* rest.resource.interaction[2].documentation = ""

* rest.resource.interaction[3].code = #update
* rest.resource.interaction[3].documentation = ""

*/

//identifier 
* rest.resource.searchParam[0].name = "identifier"
* rest.resource.searchParam[0].type = #token
* rest.resource.searchParam[0].documentation = "For searching a Practitioner resource using their council/board registration number"

//Search by name. todo - may need add docs about dependencies - eg dob as well
* rest.resource.searchParam[1].name = "name"
* rest.resource.searchParam[1].type = #string
* rest.resource.searchParam[1].documentation = "Should contain the person’s full name, include all given names and family name."




//gender 
* rest.resource.searchParam[2].name = "gender"
* rest.resource.searchParam[2].type = #token
* rest.resource.searchParam[2].documentation = "Use with name and birthdate. Search by gender alone is not allowed."

//birthdate 
* rest.resource.searchParam[3].name = "birthdate"
* rest.resource.searchParam[3].type = #date
//temp todo - need to figure out url * rest.resource.searchParam[3].definition = "http://hl7.org.nz/fhir/hpi/SearchParameter/HpiPractitionerBirthdate"
* rest.resource.searchParam[3].documentation = "Use with name and gender. Search by birthdate alone is not allowed."
/*
//ra-identifier 
* rest.resource.searchParam[4].name = "ra-identifier"
* rest.resource.searchParam[4].type = #token
//temp todo * rest.resource.searchParam[4].definition = "http://hl7.org.nz/fhir/hpi/SearchParameter/HpiPractitionerRaIdentifier"
* rest.resource.searchParam[4].documentation = "This is a custom search. It queries on the identifier supplied by the Registration Authority (Practitioner.qualification.identifier)"
*/
/* #endregion */

// ============== The PractitionerRole endpoint =============
* rest.resource[1].type = #PractitionerRole
* rest.resource[1].supportedProfile = "http://hl7.org.nz/fhir/StructureDefinition/hpi-practitioner-role"
* rest.resource[1].documentation = """
PractitionerRole query

"""

//read by id
* rest.resource[1].interaction.code = #read
* rest.resource[1].interaction.documentation = "Used to retrieve a PractitionerRole resource by Id."

//search by various parameters
* rest.resource[1].interaction[1].code = #search-type
* rest.resource[1].interaction[1].documentation = "Queries against PractitionerRole using hpi-person-id and other parameters. Will return a Bundle (even if there are no matching resources)."

* rest.resource[1].interaction[2].code = #create
* rest.resource[1].interaction[2].documentation = "Create a new PractitionerRole"

* rest.resource[1].interaction[3].code = #update
* rest.resource[1].interaction[3].documentation = "Update contact details and end date on an existing PractitionerRole record."



* rest.resource[1].searchParam[0].name = "practitioner"
* rest.resource[1].searchParam[0].type = #reference
//* rest.resource[1].searchParam[0].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-gender"
* rest.resource[1].searchParam[0].documentation = "Given an hpi-person-id, returns the PractitionerRole records associated with that id"

* rest.resource[1].searchParam[1].name = "organization"
* rest.resource[1].searchParam[1].type = #reference
//* rest.resource[1].searchParam[1].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-gender"
* rest.resource[1].searchParam[1].documentation = "Not yet enabled. Given an hpi-organization-id, returns the PractitionerRole records associated with that id"

* rest.resource[1].searchParam[2].name = "location"
* rest.resource[1].searchParam[2].type = #token
//* rest.resource[1].searchParam[2].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-gender"
* rest.resource[1].searchParam[2].documentation = "Given an hpi-facility-id, returns the PractitionerRole records associated with that id"


* rest.resource[1].searchParam[3].name = "role"
* rest.resource[1].searchParam[3].type = #token
* rest.resource[1].searchParam[3].documentation = "Returns PractitionerRole records based on role code"

* rest.resource[1].searchParam[4].name = "active"
* rest.resource[1].searchParam[4].type = #token
* rest.resource[1].searchParam[4].documentation = "To enable exclusion of inactive PractitionerRole records"

* rest.resource[1].searchInclude[0] = "practitioner"
* rest.resource[1].searchInclude[1] = "organization"
* rest.resource[1].searchInclude[2] = "location"

// ============== The Organization endpoint
* rest.resource[2].type = #Organization
* rest.resource[2].supportedProfile = "http://hl7.org.nz/fhir/StructureDefinition/hpi-organization"
* rest.resource[2].documentation = """
Organization query

"""

//read by id
* rest.resource[2].interaction[0].code = #read
* rest.resource[2].interaction[0].documentation = "Used to retrieve an Organization resource by Id."

//search by various parameters
* rest.resource[2].interaction[1].code = #search-type
* rest.resource[2].interaction[1].documentation = "Queries against the Organization using name or other parameters. Will return a Bundle (even if there are no matching resources)."

* rest.resource[2].searchParam[0].name = "active"
* rest.resource[2].searchParam[0].type = #token
* rest.resource[2].searchParam[0].documentation = "To enable exclusion of inactive organizations"

* rest.resource[2].searchParam[1].name = "name"
* rest.resource[2].searchParam[1].type = #string
* rest.resource[2].searchParam[1].documentation = "For searching using the organisation’s name or an alias name"

* rest.resource[2].searchParam[2].name = "identifier"
* rest.resource[2].searchParam[2].type = #token
* rest.resource[2].searchParam[2].documentation = "For searching using an organisation’s New Zealand Business Number (NZBN) or their legacy NZHIS agency code."

* rest.resource[2].searchParam[3].name = "type"
* rest.resource[2].searchParam[3].type = #token
* rest.resource[2].searchParam[3].documentation = "For searching using an organisation's type E.g. DHB, RA, Educational institution"

* rest.resource[2].searchParam[4].name = "partOf"
* rest.resource[2].searchParam[4].type = #reference
* rest.resource[2].searchParam[4].documentation = """
For retrieving organizations that are 'part of' another. 
"""



//================== Location =================

* rest.resource[3].type = #Location
* rest.resource[3].supportedProfile = "http://hl7.org.nz/fhir/StructureDefinition/hpi-location"
* rest.resource[3].documentation = """
Location query
"""

//read by id
* rest.resource[3].interaction[0].code = #read
* rest.resource[3].interaction[0].documentation = "Used to retrieve an Location resource by Id."

//search by various parameters
* rest.resource[3].interaction[1].code = #search-type
* rest.resource[3].interaction[1].documentation = "Queries against the Location using name or other parameters. Will return a Bundle (even if there are no matching resources)."


//todo - add read interaction

* rest.resource[3].searchParam[0].name = "identifier"
* rest.resource[3].searchParam[0].type = #token
* rest.resource[3].searchParam[0].documentation = "For searching using an organization’s legacy NZHIS facility code."

* rest.resource[3].searchParam[1].name = "name"
* rest.resource[3].searchParam[1].type = #string
* rest.resource[3].searchParam[1].documentation = "For searching using the Locations name or alias name"

* rest.resource[3].searchParam[2].name = "type"
* rest.resource[3].searchParam[2].type = #token
* rest.resource[3].searchParam[2].documentation = "Retrieve Locations of the given type"

* rest.resource[3].searchParam[3].name = "address"
* rest.resource[3].searchParam[3].type = #string
* rest.resource[3].searchParam[3].documentation = "Retrieve the Locations by address"

* rest.resource[3].searchParam[4].name = "organization"
* rest.resource[3].searchParam[4].type = #reference
* rest.resource[3].searchParam[4].documentation = "Retrieve Locations with the given ManagingOrganization"

* rest.resource[3].searchParam[5].name = "dhb"
* rest.resource[3].searchParam[5].type = #token
//* rest.resource[3].searchParam[5].definition = "http://hl7.fhir.org/fhir/SearchParameter/dhb"
* rest.resource[3].searchParam[5].documentation = "Searching for Locations that are in a DHBs catchment area."

* rest.resource[3].searchParam[6].name = "status"
* rest.resource[3].searchParam[6].type = #token
* rest.resource[3].searchParam[6].documentation = "Not yet enabled. To enable exclusion of inactive locations"

