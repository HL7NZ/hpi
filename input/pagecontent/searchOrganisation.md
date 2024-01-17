

### Search Organisation

The search organisation operation allows a user to search the HPI for:
* an organisation using the organisations name
* all organisations of a specific type e.g. Primary Health Organisation (PHO)
* all Organisations that are 'part of' another organisation

[For more organisation search parameters click here](/capabilityStatement.html#organization)


#### Search organisation using name

<div>
{% include search-organisationwithname.svg %}
</div>

**Search Organisation using name processing steps:**

1.	The user of the integrating application searches for an Organisation by entering the Organisation name.
2.	The integrating application sends an HTTP GET request for the Organization resource using the name as a search parameter
E.g. GET\<Endpoint>/Organization?name=TryNSave Pharmacy
3.	The request is validated - ALT: Validation failure. Operation Outcome resource returned
4.	The matching Organisations are retrieved from the HPI
5.	The response containing a bundle of matching Organisation records is returned to the integrating application
6.	The integrating application displays the matching Organisations to the user

[For more organisation search parameters click here](/capabilityStatement.html#organization)


#### Search Organisation by type

This extract style search operation allows a user to search for all organisation of a specific type e.g. return all  Primary Health Organisations in the HPI.

[For more informaton on extract style searches see](/general.html#extract-style-hpi-searches)

<div>
{% include search-organisationbytype.svg %}
</div>

**Search Organisation by type (e.g. PHO) processing steps:**

1.	The user of the integrating application searches for a list of organisations by entering the Organisation type (e.g. PHO)
2.	The integrating application sends an HTTP GET request for the Location resource using type as a search parameter
E.g. GET\<Endpoint>/Location?type=009
3.	The request is validated - ALT: Validation failure. Operation Outcome resource returned
4.	The first 10 matching organisations are retrieved from the HPI
5.	The response containing a bundle of matching Organisations is returned to the integrating application
6.	The integrating application displays the matching Organisations to the user
7.	[To get more than the default 10 records see]((/general.html#extract-style-hpi-searches)) to learn about the _count and _offset parameters


[For more organisation search parameters click here](/capabilityStatement.html#organization)
