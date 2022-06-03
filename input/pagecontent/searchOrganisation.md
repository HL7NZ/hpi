

### Search Organization

#### Search organization by name

Diagram TBC

Search organization processing steps:

1.	The user of the integrating application searches for an organization by entering the organization name.
2.	The integrating application sends an HTTP GET request for the organization resource using the name as a search parameter
E.g. GET https://hpi.api.health.govt.nz/organization?name=TryNSave Pharmacy
3.	The request is validated - ALT: Validation failure. Operation Outcome resource returned
4.	The matching organizations are retrieved from the HPI
5.	The response containing a bundle of matching organizations is returned to the integrating application
6.	The integrating application displays the matching organizations to the user

#### Other Search criteria:

**NZBN**
* Search Organization by identifier NZBN

GET https://hpi.api.health.govt.nz/Organization?identifier=https://standards.digital.health.nz/ns/hpi-nzbn%7c9999999999001

**LegacyOrgId**
* Search Organization by identifier Legacy organization id

GET https://hpi.api.health.govt.nz/Organization?identifier=https://standards.digital.health.nz/ns/nzhis-agency-id%7c9000

**Address** 
* Search Organization by address

GET https://hpi.api.health.govt.nz/Organization?address=Thorndon

[For more information on search organization click here](/capabilityStatement.html)

### Rules and errors
TBC


