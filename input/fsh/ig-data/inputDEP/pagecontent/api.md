
### Introduction
This page describes the subset of the [FHIR RESTful API](http://hl7.org/fhir/http.html) supported by the HPI.

>**_It does not include the authentication and other security requirements_**



### Practitioner
Queries that allow individual practitioners to be returned.

The [Companion](companion.html) application has a query tool that can be used.
 
#### Search by Demographics

Returns a bundle with matching patients. Elements supported:

* name
* birthDate
* gender
* identifier

_(there are likely some mandatory elements...)_

    GET [host]/Patient?name={x}&birthDate={y}...

See [the spec](http://hl7.org/fhir/patient.html#search) for details on the searches

#### Specific queries

##### Search by name
Returns a bundle of patients with matching names. There will very likely be more than one. 

    Patient?name={name}

eg

    Patient?name=smith

Note that the name query will match any of the string fields in the HumanName, including family, given and/or text

##### Search by NHI
Returns a bundle of patients with matching NHI's. There may be more than one.

    GET [host]/Patient?identifier={nhi}
eg

    Patient?identifier=https://standards.digital.health.nz/id/nhi|ABC1234

Note that the identifier query (whch is of type [token](http://hl7.org/fhir/search.html#token)) should include the 'system' (or namespace) of the NHI


#### Included resources

It is possible to return resources that are referenced by the matching resource in the same query ising the [_include]() parameter. 

For example the following query will return all patients whose name is 'smith' and include the referenced resources for general practitioner and organization (regardless of the type of the referenced resource).

    Patient?name=smith&_include=Patient:general-practitioner&_include=Patient:organization

