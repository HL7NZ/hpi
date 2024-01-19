

### Search Organisation Overview

The search Organisation operation allows a user to search the HPI for:
* an Organisation using the Organisation's name
* all Organisations of a specific type in the HPI e.g. All Primary Health Organisations (PHO) inthe HPI
* all Organisations that are 'part of' another Organisation

[For all the organisation search parameters click here](/capabilityStatement.html#organization)


### Search Organisation using name

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

[For all the Organisation search parameters click here](/capabilityStatement.html#organization)


### Search Organisation by type

This extract style search operation allows a user to search for all Organisation of a specific type in the HPI e.g. return all  Primary Health Organisations in the HPI.

[For more informaton on extract style searches see](/general.html#extract-style-hpi-searches)

<div>
{% include search-organisationbytype.svg %}
</div>

**Search Organisation by type (e.g. PHO) processing steps:**

1.	The user of the integrating application searches for a list of Organisations by entering the Organisation type (e.g. PHO)
2.	The integrating application sends an HTTP GET request for the Location resource using type as a search parameter
E.g. GET\<Endpoint>/Location?type=009
3.	The request is validated - ALT: Validation failure. Operation Outcome resource returned
4.	The first 10 matching Organisations are retrieved from the HPI
5.	The response containing a bundle of matching Organisations is returned to the integrating application
6.	The integrating application displays the matching Organisations to the user
7.	[To get more than the default 10 records see the extract style search information](/general.html#extract-style-hpi-searches) and learn about the _count and _offset parameters


[For all the Organisation search parameters click here](/capabilityStatement.html#organization)
