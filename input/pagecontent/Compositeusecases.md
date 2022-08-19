
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
