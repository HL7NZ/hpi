

### Search PractitionerRole

#### Search PractitionerRole with other Identifier (HPI PersonID)

<div>
{% include query-practitionerrole.svg %}
</div>

#### Search Practitioner with Identifier (HPI PersonID) Processing steps
1. The user initiates searching a PractitionerRole in the integrating application.
2. The integrating application sends an HTTP GET request (a FHIR search) for the list of PractitionerRole resources that reference the Practitioner resource for the supplied HPI PersonID number. E.g. GET https://hpi.api.health.govt.nz/practitionerRole?practitioner:practitioner.identifier=https://standards.digital.health.nz/ns/hpi-person-id | 99ZZZZ
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The PractitionerRole resources related to the supplied HPI PersonID are retrieved from the HPI - ALT: No PractitionerRole resources found. OperationOutcome resource returned
5. The response containing a bundle of PractitionerRole resources is returned
6. The consuming application displays the matching roles to the user

#### Rules and errors
TBC
