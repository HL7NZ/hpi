

### Search location (facility)

#### Search location by name

{% include search-location-with-name.svg %}

Search location processing steps:

1.	The user of the integrating application searches for a location by entering the location name.
2.	The integrating application sends an HTTP GET request for the location resource using the name as a search parameter
E.g. GET https://hpi.api.health.govt.nz/location?name=Pukekohe Diamond Doctors
3.	The request is validated - ALT: Validation failure. Operation Outcome resource returned
4.	The matching facilities are retrieved from the HPI
5.	The response containing a bundle of matching facilities is returned to the integrating application
6.	The integrating application displays the matching locations to the user
