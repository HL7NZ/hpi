

### Who can apply for access?

#### To the test environment:
All organisations and software vendors will be given access to all the HPI api operations in the HIP Compliance environment for testing and training after
completing the on-boarding process described below.

#### To the production environment:
Access to **__HPI Organisation and HPI Facility Search and Get__** interactions is available to all health providers, responsible authorities and organisations who
provide supporting services to health providers and responsible authorities.

(Definitions: A health provider means a person or an organisation that provides, or arranges the provision of, personal health services or public health
services-reference section 2, Health Act 1956. A responsible authority is an organisation responsible for the registration of practitioners-reference section 5,
Health Practitioners Competence Assurance Act 2003).

Health providers and responsible authorities with existing HPI Data Access and Provision Agreements will be given access to Get and Search Practitioner under those
agreements. This includes District Health Boards, ACC and Laboratories.

Health providers without an agreement wanting access to __**Get and Search Practitioner**__ and any organisations wanting access to __**PractitionerRole Get, Search,
Add and Update**__ interactions will need to apply to the Ministry of Health. The application will be assessed by the Ministry of Health Data Governance team and if
granted an HPI Data Access Agreement must be signed prior to credentials being issued to production.


### On-boarding
1. To apply for access to the HPI test environment download these forms from [here](https://www.health.govt.nz/our-work/health-identity/health-provider-index/hpi-information-health-it-developers)
and email to integration@health.govt.nz
   a. privacy impact questionnaire  
   b. onboarding questionnaire
   c. access request form
   
The Ministry will issue credentials for the testing endpoint. 

2. Submit the results of the compliance tests below to [integration@health.govt.nz](mailto:integration@health.govt.nz)

The Ministry will issue a compliance test report.

3. Each organisation using an application with HPI integrated services must apply individually for access to the production environment by completing an access request form and email
to [integration@health.govt.nz](mailto:integration@health.govt.nz).


### Compliance testing
Provide the following details in a test report and email to [integration@health.govt.nz](mailto:integration@health.govt.nz).

1. Tester details
   a. Organisation Name
   b. Application name and version
   c. HPI IG Version 
   d. Test Script version
   e. Testing start date and time and end date and time
   f. Tester name and contact details
   g. List of interactions included in your integration (eg Get Practitioner, Get Location, Search Location)
   
2. For each test supply screen shots of:
   a. the input data as entered in the integrating system (“the system”)
   b. any warnings or error messages presented by the system
   c. the confirmation or result of the request presented by the system


### Tests

#### HPI Organization GET

| Reference | Purpose – Demonstrate that the | Input values | Expected outcome | Mandatory |
| --------- | ------------------------------- | ------------ | ---------------- | --------- |
| HPI-O-Get-1 | System can supply a unique userID for each end user initiating requests | Get GZZ999-J <br /> Get GZZ998-G | userID varies for each request | mandatory |
| HPI-O-Get-2 | System behaves appropriately when a dormant HPI-OrgID is requested | GZZ995-A | System does not error System returns appropriate messaging to user | mandatory |
| HPI-O-Get-3 | System behaves appropriately when the organisation requested is no longer active | GZZ903-C | System returns appropriate messaging to user | mandatory |


#### HPI Organization Search

| Reference | Purpose – Demonstrate that the | Input values | Expected outcome | Mandatory |
| --------- | ------------------------------- | ------------ | ---------------- | --------- |
| HPI-O-Search-1 | Minimum search criteria are included | Search for ‘New Zealand Army’ <br /> Search for ‘Hosptial Pharmacy’ | Organisation name is supplied and returns results | mandatory |
| HPI-O-Search-2 | Search results are presented to user in score order |  | Results show highest scoring results first | mandatory |
| HPI-O-Search-3 | System behaves appropriately when the name search criteria better matches an alias than the name | Search for ‘TryNSave Pharmacy’ | System allows user to view aliases before selecting a result <br />
Name= Discount Pharmaceuticals Limited <br /> Alias= TryNSave Discount Pharmacy <br /> HPI-O= GZZ869-G | mandatory |
| HPI-O-Search-4 | System can search using the NZBN identifier | NZBN= 9999999999057 | HPI details for GZZ920-C are presented | optional |


#### HPI Location/Facility GET

|Reference|Purpose – Demonstrate that the |Input values|Expected outcome|Mandatory|
|---------|-------------------------------|------------|----------------|---------|
|HPI-L-Get-1|System can supply a unique userID for each end user initiating requests|FZZ999-B <br /> FZZ997-J|userID varies for each request|mandatory|
|HPI-L-Get-2|System behaves appropriately when a dormant HPI-OrgID is requested|FZZ997-J|System does not error <br /> System returns appropriate messaging to user|mandatory|
|HPI-L-Get-3|System behaves appropriately when the location requested is no longer active|FZZ754-E <br /> FZZ753-C|System returns appropriate messaging to user|mandatory|
|HPI-L-Get-4|System behaves appropriately when more than one contact point is present|FZZ968-B|Where appropriate all contact points are displayed to user|mandatory|
|HPI-L-Get-5|	System behaves appropriately when using the contact point rank|tbd|When rank is present it is presented to user in an meaningful way|  |
|HPI-L-Get-6|System presents the address parts appropriately|FZZ961-K <br /> FZZ960-H <br /> FZZ959-A <br /> FZZ958-K <br /> FZZ957-H|All address formats are displayed appropriately|  |
 
 
#### HPI Location/Facility Search

|Reference|Purpose – Demonstrate that the |Input values|Expected outcome|Mandatory|
|---------|-------------------------------|------------|----------------|---------|
|HPI-L-Search-1|Minimum search criteria are included|Name = “Red Diamond”|Facility name is supplied and returns results|mandatory|
|HPI-L-Search-2|Search results are presented to user in score order|  |Results show highest scoring results first|mandatory|
|HPI-L-Search-3|System behaves appropriately when the name search criteria better matches an alias than the name|Name = “Pukekohe Diamond Doctors”|System allows user to view aliases before selecting a result <br /> Name= Pukekohe Diamond Doctors <br /> Alias= Pukekohe Diamond Doctors <br /> HPI = F=FZZ857-D|mandatory|


#### HPI Practitioner GET

|Reference|Purpose – Demonstrate that the |Input values|Expected outcome|Mandatory|
|---------|-------------------------------|------------|----------------|---------|
|HPI-P-Get-4|System can supply a unique userID for each end user initiating requests|92ZZRR <br /> 92ZZRE|userID varies for each request|mandatory|
|HPI-P-Get-5|System can handle a response when a dormant CPN is requested|tbd|System does not error <br /> System returns appropriate messaging to user|mandatory|
|HPI-P-Get-6|System can handle a response when practitioner has <br /> only a surname; <br /> only a given name; <br /> multiple names|Tbd (only surname, only given name) <br /> 99ZZVM <br /> 99ZZVA|System does not error <br /> System returns all name parts when present <br /> Order of name parts is clear to the user|mandatory|
|HPI-P-Get-7|System behaves appropriately when the requested practitioner has more than one registration|95ZZEJ <br /> 98ZZNY <br /> 95ZZQE <br /> 98ZZQJ <br /> 95ZZDR <br /> 95ZZDE|The appropriate registration is used or both registrations are presented|mandatory|
|HPI-P-Get-8|System behaves appropriately when the requested practitioner has more than Scope of Practice|98ZZNY <br /> 90ZZJF <br /> 98ZZNM|System returns appropriate messaging to user|optional|
|HPI-P-Get-9|System behaves appropriately when the requested practitioner does not have a registration|90ZZLC <br /> 90ZZLP|System does not error <br /> System returns appropriate messaging to user|mandatory|
|HPI-P-Get-10|System behaves appropriately for all registration statuses|98ZZYU <br /> 98ZZYH <br /> 98ZZXQ <br /> 98ZZXD|System returns appropriate messaging to user|mandatory|
|HPI-P-Get-11|System clearly distinguishes between educational qualifications and registration details|97ZZYP <br /> 94ZZXF <br /> 97ZZYC <br /> 94ZZWZ <br /> 97ZZXW|System returns appropriate messaging to user|mandatory|
|HPI-P-Get-12|System behaves appropriately when confidentiality settings have been set for a practitioner|93ZZRW <br /> 96ZZSG <br /> 98ZZWL|System does not error <br /> System returns appropriate messaging to user|mandatory|
|HPI-P-Get-13|System behaves appropriately when practitioner record has a date of death|90ZZLP <br /> 90ZZMG <br /> 92ZZSJ <br /> 92ZZRR|System returns appropriate messaging to user|mandatory|


#### HPI Practitioner Search

|Reference|Purpose – Demonstrate that the |Input values|Expected outcome|Mandatory|
|---------|-------------------------------|------------|----------------|---------|
|HPI-P-Search-1|System can search using the practitioner’s registration identifier eg Medical Council number, Nursing Council number|Medical Council <br /> Medical Council #= 99478 <br /> <br /> Nursing Council <br /> Nursing Council #= 961049 <br /> <br /> Medical Sciences Council <br /> Medical Sciences Council #= 30-91697|System retrieves record successfully|optional|
|NOTE: Access is restricted to Practitioner Search by name and date of birth – prior permission should be sort from the Integration team before developing this functionality into an application|
|HPI-P-Search-2|Minimum search criteria are included|Name = Walter O’Reilly <br /> Date of birth=24/05/1943 <br /> Name = Brian Hunnicutt <br /> Date of birth= 6/02/1939|A name and date of birth are provided in the request|optional|
|HPI-P-Search-3|Search results are presented to user in score order|  |Results show highest scoring results first|mandatory|


#### HPI PractitionerRole Get

|Reference|Purpose – Demonstrate that the |Input values|Expected outcome|Mandatory|
|---------|-------------------------------|------------|----------------|---------|
|HPI-PR-Get-4|System can Get a record using the PractitionerRoleID and supply a unique userID for each end user initiating requests|tbd|userID varies for each request|mandatory|


#### HPI PractitionerRole Search

|Reference|Purpose – Demonstrate that the |Input values|Expected outcome|Mandatory|
|---------|-------------------------------|------------|----------------|---------|
|HPI-PR-Search-1|Minimum search criteria are included|tbd|CPN is always provided|mandatory|
|HPI-PR-Search-2|System behaves appropriately when the record contains a role that has ended|tbd|System returns appropriate messaging to user|mandatory|
|HPI-PR-Search-3|System behaves appropriately where a role does not include an organization ID|tbd|System does not error <br /> System returns appropriate messaging to user|mandatory|
|HPI-PR-Search-4|System behaves appropriately where a role does not include a role code|tbd|System does not error <br /> System returns appropriate messaging to user|mandatory|
|HPI-PR-Search-5|System behaves appropriately when confidentiality settings have been set for a practitioner|tbd|System does not error <br /> System returns appropriate messaging to user|mandatory|
|HPI-PR-Search-6|System behaves appropriately when the record contains one or more contact points|tbd|Where appropriate all contact points are displayed to user|optional|
|HPI-PR-Search-7|System behaves appropriately when using the contact point rank|tbd|When rank is present it is presented to user in an meaningful way|optional|


#### HPI PractitionerRole Add

|Reference|Purpose – Demonstrate that the |Input values|Expected outcome|Mandatory|
|---------|-------------------------------|------------|----------------|---------|
|HPI-PR-Add-1|Minimum add criteria are provided (CPN and facility)|Select HPI-CPN from test IDs <br /> Select HPI-FacID from the test IDs|PractitionerRole record is added|mandatory|
|HPI-PR-Add-2|System can supply all possible PractitionerRole attributes|Add a record with location, organization, role code,  multiple contact points and a period|PractitionerRole record is added|optional|
|HPI-PR-Add-3|System can provide the confidentiality settings|  |PractitionerRole record is added with appropriate confidentiality settings|optional|


#### HPI PractitionerRole Update

|Reference|Purpose – Demonstrate that the |Input values|Expected outcome|Mandatory|
|---------|-------------------------------|------------|----------------|---------|
|HPI-PR-Update|System can end a PractitionerRole record that it has created|Use role created in HPI-PR-Add-1 test|CPN is always provided|mandatory|
|HPI-PR-Update|System can add a contactpoint|Use role created in HPI-PR-Add-1 to 3|Contactpoint is added to the record|optional|
|HPI-PR-Update|System can remove a contactpoint|Use role created in HPI-PR-Add-1 to 3|Contactpoint is removed from the record||optional|
|HPI-PR-Update|System can update the rank on a contactpoint|Use role created in HPI-PR-Add-1 to 3|Rank is updated on a contactpoint||optional|
|HPI-PR-Update|System can provide the confidentiality settings|Use role created in HPI-PR-Add-1 to 3|Confidentiality settings are updated on the record||optional|

#### Security and Audit Assessment

|Reference|Purpose|Mandatory|
|---------||------|---------|
|Security 1|Credentials match those issued to the testing organisation|Mandatory|
|Security 2|Sending user ID is an end user ID or a CPN|Mandatory|
|Security 3|Sending user ID changes when different end users are initiating the request|Mandatory|
