

### Search PractitionerRole by practitioner (hpi-person-id)

<div>
{% include query-practitionerrole.svg %}
</div>

Search PractitionerRole by practitioner (hpi-person-id) Processing steps

1. The user initiates searching a PractitionerRole in the integrating application.
2. The integrating application sends an HTTP GET request (a FHIR search) for the list of PractitionerRole resources that reference the Practitioner resource for the supplied hpi-person-id. E.g. GET\<Endpoint>/PractitionerRole?practitioner=99ZZZZ
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The PractitionerRole resources related to the supplied hpi-person-id are retrieved from the HPI - ALT: No PractitionerRole resources found. OperationOutcome resource returned
5. The response containing a bundle of PractitionerRole resources is returned
6. The consuming application displays the matching Practitioner Role details to the user

### Using _ include parameter
When specified by _ include, the practitioner, organization and location records are included in the response. <br />
__Note:__ This requires read permission on the included resource. <br />
E.g. GET\<Endpoint>/PractitionerRole?practitioner=99ZZZS&_include=PractitionerRole:practitioner

[For more information on search PractitionerRole click here](/capabilityStatement.html#practitionerrole)
  
### Rules and errors
TBC
