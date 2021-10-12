
### Read Practitioner with Identifier (CPN)
<img style="width:900px; float:none" src="uc1.png"/>

Read practitioner processing steps:
1.	The user supplies a CPN number for the practitioner to be looked up.
2.	The integrating application sends an HTTP GET request for the Practitioner resource using the CPN to identify the practitioner whose information is being requested. 
E.g. GET https://hpi.api.health.govt.nz/practitioner/99ZZZZ
3.	The request is validated - ALT: Validation failure. OperationOutcome resource returned
4.	The Practitioner resource is retrieved from the HPI - ALT: Practitioner not found. OperationOutcome resource returned
5.	The response containing the Practitioner resource is returned


### Query Practitioner with another identifier (e.g. Nursing Council Number)

<img style="width:900px; float:none" src="uc2.png"/>

Read practitioner processing steps:
1.	The user supplies a nursing council number for the practitioner to be looked up.
2.	The integrating application sends an HTTP GET request for the Practitioner resource using the nursing council id to identify the practitioner whose information is being requested. E.g. 
GET https://hpi.api.health.govt.nz/practitioner?identifier=https://standards.digital.health.nz/ns/nursing-council-id|999999
3.	The request is validated - ALT: Validation failure. OperationOutcome resource returned
4.	The Practitioner resource is retrieved from the HPI - ALT: Practitioner not found. OperationOutcome resource returned
5.	The response containing the Practitioner resource is returned
6.	The integrating application displays the matching practitioner to the user



### Search Practitioner using name and DoB

<img style="width:900px; float:none" src="uc3.png"/>

Search practitioner processing steps:
1.	The user of the integrating application searches for a practitioner by entering the name and date of birth.
2.	The integrating application sends an HTTP GET request for the Practitioner resource using the family and given name, and birthdate elements as search parameters E.g. GET https://hpi.api.health.govt.nz/practitioner?family=smith&given=nikau&birthdate=2001-01-01
3.	The request is validated - ALT: Validation failure. OperationOutcome resource returned
4.	The matching practitioners are retrieved from the HPI
5.	The response containing a bundle of matching practitioners is returned to the integrating application
6.	The integrating application displays the matching practitioners the user


### Update contact details or end-date on a PractitionerRole 

<img style="width:900px; float:none" src="uc4.png"/>

Update PractitionerRole processing steps (steps 1-6 not required if practitionerRole id already known):
1.	The user initiates updating a PractitionerRole in the integrating application.
2.	The integrating application sends an HTTP GET request (a FHIR search) for the list of PractitionerRoles referencing the Practitioner resource for the supplied CPN number. E.g. 
GET https://hpi.api.health.govt.nz/practitionerRole?practitioner:practitioner.identifier=https://standards.digital.health.nz/ns/hpi-person-id|99ZZZZ
3.	The request is validated - ALT: Validation failure. OperationOutcome resource returned
4.	The practitionerRoles related to the supplied CPN are retrieved from the HPI - ALT: No practitionerRoles found. OperationOutcome resource returned
5.	The response containing a bundle of practitionerRole resources is returned
6.	The consuming application displays the matching roles to the user
7.	The user selects a role to update and supplies new contact details or an end date.
8.	The API consumer sends an HTTP PUT request (a FHIR update) containing the previously returned practitionerRole with the new details entered by the user. E.g. PUT https://hpi.api.health.govt.nz/practitionerRole/1234567
9.	The request is validated - ALT: Validation failure. OperationOutcome resource returned
10.	The supplied practitionerRole is updated on the HPI.
11.	The HPI FHIR API confirms a successful update – HTTP 200
12.	The integrating application indicates to the user the update has been successful. 

### Add new practitionerRole 
<img style="width:900px; float:none" src="uc5.png"/>

Add new practitionerRole processing steps:
1.	The user initiates creating a new PractitionerRole in the integrating application
2.	The integrating application sends an HTTP POST request (a FHIR create) containing the practitionerRole details
3.	The request is validated - ALT: Validation failure. OperationOutcome resource returned
4.	A practitionerRole record is created and a PractitionerRole ID issued.
5.	The HPI FHIR API confirms a successful update – HTTP 200
6.	The integrating application indicates to the user the create has been successful. 
7.	The integrating application retains the PractitionerRole ID for subsequent update requests 

### Lookup EDI for an enrolled patient’s GP

<img style="width:900px; float:none" src="uc6.png"/>

Lookup EDI for an enrolled patient’s GP:
1.	The user initiates searching for an EDI of a patient’s GP to send something to. 
2.	The integrating application calls the SOAP Enrolment service with the patient’s NHI number.
3.	The SOAP Enrolment web service returns the enrolment for a patient containing the OrgID, FacID, and GP’s CPN. 
4.	The integrating application sends a read request for the Facility (location resource) using the FacID to the HPI FHIR API. 
E.g. GET https://hpi.api.health.govt.nz/location/ F99999B
5.	The requested is validated - ALT: Validation failure. OperationOutcome resource returned
6.	The location resource is returned from the HPI. 
7.	The integrating application extracts the telecom’s ContactPoint containing the EDI number for 
