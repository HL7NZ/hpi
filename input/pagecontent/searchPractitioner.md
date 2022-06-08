

### Search Practitioner

#### Search Practitioner by name and birth date

<div>
{% include search-practitioner-with-name-birthdate.svg %}
</div>

Search Practitioner by name and birth date processing steps:

1. The user of the integrating application searches for a Practitioner by entering the name and birth date
2. The integrating application sends an HTTP GET request for the Practitioner resource using the name and birthdate elements as search parameters E.g. GET https://hpi.api.health.govt.nz/practitioner?name=smith&birthdate=2001-01-01
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The matching practitioners are retrieved from the HPI
5. The response containing a bundle of matching practitioners is returned to the integrating application
6. The integrating application displays the matching practitioners the user


#### Other Search criteria:

**Search Practitioner by other identifier**
* E.g. Nursing Council Number:

Diagram TBC

Search Practitioner by other identifier processing steps:

1. The user supplies a nursing council number for the practitioner to be looked up.
2. The integrating application sends an HTTP GET request for the Practitioner resource using the nursing council id to identify the practitioner whose information is being requested. E.g. GET https://hpi.api.health.govt.nz/practitioner?identifier=https://standards.digital.health.nz/ns/nursing-council-id | 999999
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The Practitioner resource is retrieved from the HPI - ALT: Practitioner not found. OperationOutcome resource returned
5. The response containing the Practitioner resource is returned
6. The integrating application displays the matching practitioner to the use

[For a full list of identifiers click here](https://fhir.org.nz/ig/base/namingSystems.html)

#### Rules and errors
TBC
