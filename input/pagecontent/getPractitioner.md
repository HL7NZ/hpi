

### Read Practitioner (hpi-person-id)

* A practitioner read request returns a practitioner record with the following attributes (if populated):
  * The ‘last updated single instance’ from across all sources:
    * deathdate,
    * official and usual names,
    * set of languages, and
  * All:
    * educational qualifications
    * ‘old’ names, and
    * registraion details (qualification) 

* A user with administration permissions will also see the ‘last updated single instance’ from across all sources:
  * set of ethnicities
  * gender
  * birthdate.


<div>
{% include get-practitioner.svg %}
</div>

Read practitioner processing steps:

1. The user supplies an hpi-person-id number for the practitioner to be looked up.
2. The integrating application sends an HTTP GET request for the Practitioner resource using the hpi-person-id to identify the practitioner whose information is being requested. E.g. GET\<Endpoint>/Practitioner/99ZZRT
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The Practitioner resource is retrieved from the HPI - ALT: Practitioner not found. OperationOutcome resource returned
5. The response containing the Practitioner resource is returned

### Query Practitioner with another identifier (nursing-council-id)

To query a Practitioner with ‘another identifier' the integrating application sends an HTTP GET request for the Practitioner resource using the ‘other identifier’ to identify the Practitioner whose information is being requested.

[To review searching by other identifiers click here](/searchPractitioner.html#other-search-criteria)

[For more information on read vs query click here](/general.html#read-resource-by-id)


#### Get Practitioner Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Get Practitioner rules**
  * A Practitioner read request must include a valid hpi-person-id

* _Get Practitioner errors_
    * _"Invalid hpi-person-id" (HTTP 404 Not found, Error, Processing)_
    * _"hpi-person-id not found" (HTTP 404 Not found, Error, Processing)_
