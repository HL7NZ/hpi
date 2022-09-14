

### Search Practitioner with name

<div>
{% include search-practitioner-withname.svg %}
</div>

**Processing steps:**

1. The user of the integrating application searches for a Practitioner by entering the name
2. The integrating application sends an HTTP GET request for the Practitioner resource using the name attribute as search parameter E.g. GET\<Endpoint>/Practitioner?name=walter o'reilly
4. The request is validated - ALT: Validation failure. OperationOutcome resource returned
5. The matching practitioners are retrieved from the HPI
6. The response containing a bundle of matching practitioners is returned to the integrating application
7. The integrating application displays the matching practitioners to the user


### Search Practitioner by name and birth date

<div>
{% include search-practitionerwithnamebirthdate.svg %}
</div>

**Processing steps:**

1. The user of the integrating application searches for a Practitioner by entering the name and birth date
2. The integrating application sends an HTTP GET request for the Practitioner resource using the name and birthdate elements as search parameters E.g. GET\<Endpoint>/Practitioner?name=walter o'reilly&birthdate=1943-05-24
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The matching practitioners are retrieved from the HPI
5. The response containing a bundle of matching practitioners is returned to the integrating application
6. The integrating application displays the matching practitioners to the user


### Query Practitioner with another identifier

<div>
{% include query-practitioner.svg %}
</div>

**processing steps**

E.g.nursing-council-id:

1. The user supplies the system (https://standards.digital.health.nz/ns/nursing-council-id) and identifier (nursing-council-id) for the practitioner to be looked up.
2. The integrating application sends an HTTP GET request for the Practitioner resource using the nursing council identifier to identify the practitioner whose information is being requested. E.g. GET\<Endpoint>/Practitioner?identifier=https://standards.digital.health.nz/ns/nursing-council-id\|999999
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The Practitioner resource is retrieved from the HPI - ALT: Practitioner not found. OperationOutcome resource returned
5. The response containing a bundle with a single Practitioner resource is returned
6. The integrating application displays the matching practitioner to the user

[For a full list of identifiers click here](https://fhir.org.nz/ig/base/namingSystems.html)

[For more information on search ptactitioner click here](/capabilityStatement.html#practitioner)

### Rules and errors
TBC
