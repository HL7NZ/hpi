

### Search Practitioner

#### Search Practitioner using name and DoB

<img style="width:900px; float:none" src="uc3.png"/>

Search practitioner processing steps:

1. The user of the integrating application searches for a practitioner by entering the name and date of birth.
2. The integrating application sends an HTTP GET request for the Practitioner resource using the family and given name, and birthdate elements as search parameters E.g. GET https://hpi.api.health.govt.nz/practitioner?family=smith&given=nikau&birthdate=2001-01-01
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The matching practitioners are retrieved from the HPI
5. The response containing a bundle of matching practitioners is returned to the integrating application
6. The integrating application displays the matching practitioners the user
