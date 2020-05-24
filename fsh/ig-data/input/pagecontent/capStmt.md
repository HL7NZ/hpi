This page is derived from the information recorded in the [CapabilityStatement](CapabilityStatement-HpiCapabilityStatement.html) 
resource.
It describes the details of the RESTful interface through which clients can access the HPI.

There are examples of all these queries in the [IG Companion](companion.html)

Capability Statement describing HPI FHIR APIs  
Status: additional

This is the computable resource that describes the RESTful endpoint




### Practitioner

Practitioner query


#### Interactions

| Code | Documentation |
| --- | --- |
| search-type | Gender and birthDate are required in all searches |

_Interactions describe which of the FHIR interactions are supported for this type - eg read, search, update etc. Details in [the spec](http://hl7.org/fhir/valueset-type-restful-interaction.html)_



#### Search Parameters

| Name | Type | Documentation |
| --- | --- | --- |
| name | string | Not case sensitive |
| identifier | token | Will only return active identifiers |
| family | string |  |
| given | string |  |
| gender | token |  |
| birthdate | token | This is a custom search |
| ra-identifier | token | This is a custom search. It queries on the identifier suplied by the Registartion Authority (Practitioner.qualification.identifier) |

_Describes which of the defined search parameters are supported for this type. These are defined for each resource - 
for example [the practitioner resource](http://hl7.org/fhir/practitioner.html#search)_





### PractitionerRole

PractitionerRole query




#### Search Parameters

| Name | Type | Documentation |
| --- | --- | --- |
| practitioner | reference | Given a Practitoner id, returns the PractitonerRoles associated with that id |
| organization | reference | Given a Organization id, returns the PractitonerRoles associated with that id |
| location | token | Given a Location id, returns the PractitonerRoles associated with that id |
| identifier | token | Returns PractitionerRoles based on identifier |
| role | token | Returns PractitionerRoles based on role |

_Describes which of the defined search parameters are supported for this type. These are defined for each resource - 
for example [the practitioner resource](http://hl7.org/fhir/practitioner.html#search)_


#### Search Includes

practitioner 

organization 

location 


_What ['_include'](http://hl7.org/fhir/search.html#include) parameters are supported for this type. This allows referenced resource to be included in queries._




