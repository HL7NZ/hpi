


### Update Practitioner Role 

An update of Practitioner Role allows an authorised user to update the contact details or add an end-date.

#### Update contact details or end-date on a PractitionerRole 

Error loading Image

#### Update PractitionerRole processing steps

Note: If the Practitioner Role is not known, then the user will need to do a HTTP GET request (a FHIR search) for the list of PractitionerRoles [click here]()

1.	The user initiates updating a PractitionerRole in the integrating application.
2.	The user selects a role to update and supplies new contact details or an end date.
3.	The API consumer sends an HTTP PUT request (a FHIR update) containing the previously returned Practitioner Role with the new details entered by the user. E.g. PUT https://hpi.api.health.govt.nz/practitionerRole/1234567
4.	The request is validated - ALT: Validation failure. OperationOutcome resource returned
5.	The supplied practitionerRole is updated on the HPI
6.	The HPI FHIR API confirms a successful update – HTTP 200
7.	The integrating application indicates to the user the update has been successful.
