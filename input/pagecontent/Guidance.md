
### Lookup EDI for an enrolled patient’s GP

<div>
{% include lookup-edi-number.svg %}
</div>

Processing steps:
1.	The user initiates searching for an EDI number of a patient’s GP
2.	The integrating application calls the SOAP Enrolment service with the patient’s NHI number
3.	The SOAP Enrolment web service returns the enrolment for a patient containing the hpi-organisation-id, hpi-facility-id, GP's hpi-person-id
4.	The integrating application sends a read request for the Facility (Location resource) using the hpi-facility-id to the HPI FHIR API
E.g. GET\{{Endpoint}}/Location/F99999B
5.	The requested is validated - ALT: Validation failure. OperationOutcome resource returned
6.	The Location resource is returned from the HPI
7.	The integrating application extracts the messaging address containing the EDI number for the GP clinic
