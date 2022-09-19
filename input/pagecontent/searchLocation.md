

### Search Facility (Location) by name

<div>
{% include search-locationwithname.svg %}
</div>

Search Facility (Location) processing steps:

1.	The user of the integrating application searches for a Facility by entering the Facility name
2.	The integrating application sends an HTTP GET request for the Location resource using the name as a search parameter
E.g. GET\<Endpoint>/Location?name=Pukekohe Diamond Doctors
3.	The request is validated - ALT: Validation failure. Operation Outcome resource returned
4.	The matching facilities are retrieved from the HPI
5.	The response containing a bundle of matching facilities is returned to the integrating application
6.	The integrating application displays the matching locations to the user


### Other Search criteria

**Search Location using address**

GET\<Endpoint>/Location?address=wilson street

**Search (Query) Location using Legacy facility id**

GET\<Endpoint>/Location?identifier=https://standards.digital.health.nz/ns/nzhis-facility-id\|Z995

[For more information on search location click here](/capabilityStatement.html#location)
