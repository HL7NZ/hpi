


### Update Practitioner Role

#### Overview

An update on an HPI PractitionerRole resource allows an authorised user to update the contact details or add an end-date.
Prior to an update a user should do an HTTP GET request using the Practitioner Role identifier [Click here for more information](/getPracRole.html)

<div>
{% include update-practitionerrole.svg %}
</div>

#### Processing steps:

1.	The user initiates updating a PractitionerRole in the integrating application.
2.	The user selects a role to update and supplies new contact details or an end date.
3.	The API consumer sends an HTTP PUT request (a FHIR update) containing the previously returned Practitioner Role with the new details entered by the user. E.g. PUT (...)/PractitionerRole/R00000009-H
4.	The request is validated - ALT: Validation failure. OperationOutcome resource returned
5.	The supplied PractitionerRole is updated on the HPI
6.	The HPI FHIR API confirms a successful update – HTTP 200 ok
7.	The integrating application indicates to the user the update has been successful.

#### Rules and errors
TBC
