

### Search Practitioner Role

#### Search Practitioner Role with Identifier (CPN)

Error loading image

#### Search Practitioner with Identifier (CPN) Processing steps
1. The user initiates searching a Practitioner Role in the integrating application.
2. The integrating application sends an HTTP GET request (a FHIR search) for the list of PractitionerRoles referencing the Practitioner resource for the supplied CPN number. E.g. GET https://hpi.api.health.govt.nz/practitionerRole?practitioner:practitioner.identifier=https://standards.digital.health.nz/ns/hpi-person-id|99ZZZZ
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The practitioner Roles related to the supplied CPN are retrieved from the HPI - ALT: No practitionerRoles found. OperationOutcome resource returned
5. The response containing a bundle of Practitioner Role resources is returned
6. The consuming application displays the matching roles to the user
