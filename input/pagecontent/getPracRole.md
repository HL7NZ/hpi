

### Read PractitionerRole with Identifier (hpi-practitionerrole-id)

<div>
{% include get-practitionerrole.svg %}
</div>

Read PractitionerRole processing steps:

1. The user supplies an hpi-practitionerrole-id for the PractitionerRole to be looked up.
2. The integrating application sends an HTTP GET request for the PractitionerRole resource using the hpi-practitionerrole-id to identify the PractitionerRole whose information is being requested E.g. GET\<Endpoint>/PractitionerRole/R00000009-H.
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The PractitionerRole resource is retrieved from the HPI - ALT: PractitionerRole not found. OperationOutcome resource returned
5. The response containing the PractitionerRole resource is returned

### Query PractitionerRole with another identifier (hpi-person-id)

To query a PractitionerRole with ‘another identifier' the integrating application sends an HTTP GET request for the PractitionerRole resource using the ‘other identifier’ to identify the Practitioner whose information is being requested.

[To review searching by other identifiers click here](/searchPracRole.html#search-prac-role)

[For more information on read vs query click here](/general.html#read-resource-by-id)


### Get PractitionerRole Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Get PractitionerRole rules**
  * A PractitionerRole read request must include a valid hpi-practitionerrole-id

* _Get PractitionerRole errors_
  * _“Invalid id: ” (HTTP 404 Not found, Error, Processing)_
