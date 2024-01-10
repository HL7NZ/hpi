

### Search Facility

The Search facility operation allows a user to search for:
* a specific facility using known facility demographics (e.g. name, address),
* all facilities in a specific DHB catchment area
* all facilities of a specific type e.g. pharmacies
* all facilities with a given Managing Organisation

[For more facility search parmeters click here](/capabilityStatement.html#location)

#### Search Facility by name

This operation is used to search for a specific facility using known facilities demographics.

<div>
{% include search-locationwithname.svg %}
</div>

**Search Facility by name processing steps:**

1.	The user of the integrating application searches for a Facility by entering the Facility name
2.	The integrating application sends an HTTP GET request for the Location resource using the name as a search parameter
E.g. GET\<Endpoint>/Location?name=Pukekohe Diamond Doctors
3.	The request is validated - ALT: Validation failure. Operation Outcome resource returned
4.	The matching facilities are retrieved from the HPI
5.	The response containing a bundle of matching facilities is returned to the integrating application
6.	The integrating application displays the matching locations to the user

[For more facility search parmeters click here](/capabilityStatement.html#location)


### Search Facilities by type.

This extract style search operation allows a user to search for all facilities of a specific type e.g. return all pharmacies in the HPI.

For more informaton on extrac style searches see **Extract style searches TBC** 

<div>
{% include search-locationbytype.svg %}
</div>

**Search Facilities by type processing steps:**

1.	The user of the integrating application searches for a list of facilities by entering the facility type
2.	The integrating application sends an HTTP GET request for the Location resource using type as a search parameter
E.g. GET\<Endpoint>/Location?type=pharm
3.	The request is validated - ALT: Validation failure. Operation Outcome resource returned
4.	The first 10 matching facilities are retrieved from the HPI
5.	The response containing a bundle of matching facilities is returned to the integrating application
6.	The integrating application displays the matching locations to the user
7.	To get more than the default 10 records see ** to learn about the _count and _offset parameters

[For more facility search parmeters click here](/capabilityStatement.html#location)
