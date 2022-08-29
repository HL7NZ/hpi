

### Read Practitioner Role with Identifier (hpi-practitionerrole-id)

<div>
{% include get-practitionerrole.svg %}
</div>

Read PractitionerRole processing steps:

1. The user supplies an hpi-practitionerrole-id for the PractitionerRole to be looked up.
2. The integrating application sends an HTTP GET request for the PractitionerRole resource using the hpi-practitionerrole-id to identify the PractitionerRole whose information is being requested. E.g. GET(Endpoint)/PractitionerRole/R00000009-H
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The PractitionerRole resource is retrieved from the HPI - ALT: Practitioner not found. OperationOutcome resource returned
5. The response containing the PractitionerRole resource is returned

### Query PractitionerRole with another identifier (hpi-person-id)

To query a PractitionerRole with ‘another identifier' the integrating application sends an HTTP GET request for the PractitionerRole resource using the ‘other identifier’ to identify the Practitioner whose information is being requested.

[To review searching by other identifiers click here](/searchPracRole.html#search-prac-role)

[For more information on read vs query click here](/general.html#read-resource-by-id)

### Rules and errors
TBC
