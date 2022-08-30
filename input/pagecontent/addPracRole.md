

### Add new Practitioner Role resource

<div>
{% include add-practitionerrole.svg %}
</div>

Add new PractitionerRole processing steps:

1. The user initiates creating a new PractitionerRole in the integrating application
2. The integrating application sends an HTTP POST request (a FHIR create) containing the PractitionerRole details 
E.g. Post{{Endpoint}}/PractitionerRole
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. A PractitionerRole record is created and a hpi-practitionerrole-id issued
5. The HPI FHIR API confirms a successful update – HTTP 201 Created status code
6. The integrating application indicates to the user the create has been successful
7. The integrating application retains the hpi-practitionerrole-id and vrsion number for future requests relating to this record

### Rules and errors
TBC
