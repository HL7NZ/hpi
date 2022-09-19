

### Search Organization by name

<div>
{% include search-organizationwithname.svg %}
</div>

Search Organization processing steps:

1.	The user of the integrating application searches for an Organization by entering the Organization name.
2.	The integrating application sends an HTTP GET request for the Organization resource using the name as a search parameter
E.g. GET\<Endpoint>/Organization?name=TryNSave Pharmacy
3.	The request is validated - ALT: Validation failure. Operation Outcome resource returned
4.	The matching Organizations are retrieved from the HPI
5.	The response containing a bundle of matching Organizations is returned to the integrating application
6.	The integrating application displays the matching Organizations to the user

### Other Search criteria:

**Query Organization using identifier - NZ Business number (NZBN)**

GET\<Endpoint>/Organization?identifier=https://standards.digital.health.nz/ns/hpi-nzbn\|9999999999001

**Query Organization using identifier - Legacy organization id**

GET\<Endpoint>/Organization?identifier=https://standards.digital.health.nz/ns/nzhis-agency-id\|9000

**Search Organisation using address** 

GET\<Endpoint>/Organization?address=Thorndon

[For more information on search organization click here](/capabilityStatement.html#organization)


