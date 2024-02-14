
The following notes apply to all resources in this implementation.

### Resource representation: Json

Only Json is supported by this implementation.


### Id and Identifiers

All of the FHIR resources in this implementation have both an id and an identifier.

The id is the ‘physical’ identity of the resource, and the identifier is the business identifier. 

In this implementation, **the id of the resource will always be the same as the value of the identifier assigned by the HPI with a use value of ‘official’**. (There will only ever be a single identifier with this use type and system in a resource). Thus the id for the resource below would be ‘92ZZRR’, and the url something like:

https://api.hip.digital.health.nz/fhir/Practitioner/92ZZRR

This design allows an implementer to retrieve a resource from the HPI and save it on their own system, but still be able to retrieve the original to check for updates. This can be done in 2 ways.


#### Read resource by id

Extract the value of the identifier where the value of the __use__ element is ‘official’, and use that as the id for a direct read from the server. 

Example:

Get{{Endpoint}}/Resource/identifier

Get\<Endpoint>/Practitioner/92ZZRR <br />
Get\<Endpoint>/Organization/GZZ999-J

For more information look at the _Get <Resource> Use cases_ in the 'Use cases' menu


#### Query resource

Use an identifier (medical-council-id) in a search query

Each resource has more than one identifier. If a user wants to query the HPI using _another identifier_, both the system and identifier needs to be provided

Example: 

* **Practitioner**:
  * medical-council-id
    * System - https://standards.digital.health.nz/ns/medical-council-id
    * Identifier - 99536
  * nursing-council-id
    * System - https://standards.digital.health.nz/ns/nursing-council-id
    * Identifier - 961049

* **Organization**
  * legacyOrgId
    * System - https://standards.digital.health.nz/ns/nzhis-agency-id
    * Identifier - 9000
  * nzbn
    * System - https://standards.digital.health.nz/ns/hpi-nzbn
    * Identifier - 9999999999001

* **Location**
  * legacyFacId
    * System - https://standards.digital.health.nz/ns/nzhis-facility-id
    * Identifier - Z995

__Note:__ Both system and value are included in the query, with values separated by a ‘\|’. When making the query, the ‘\|’ needs to be url-escaped)

* Get\<Endpoint>/Practitioner?identifier=https://standards.digital.health.nz/ns/medical-council-id\|99536 <br />
* Get\<Endpoint>/Organization?identifier=https://standards.digital.health.nz/ns/hpi-nzbn\|9999999999057 <br />
* Get\<Endpoint>/Organization?identifier=https://standards.digital.health.nz/ns/nzhis-agency-id\|9000 <br />
* Get\<Endpoint>/Location?identifier=https://standards.digital.health.nz/ns/nzhis-facility-id\|Z995 <br />

These examples will return a bundle of resources with only a single entry (as the system enforces uniqueness of the identifier). Other queries - eg name - may well return multiple instances.

For more information look at the __Search Use cases__ in the menu


### Additional Search parameters

#### Search resource using a string

* For a simple string search, a string parameter serves as the input for a search against sequences of characters.
* By default, a field matches a string query if the value of the field equals or starts with the supplied parameter value.
* The _:contains modifier_ returns results that include the supplied parameter value anywhere within the field being searched.
* The _:exact modifier_ returns results that match the entire supplied parameter, including casing and accents.


**Examples**

* Get\<Endpoint>/Organization?name=Pharmacy
  * Any organisations with the name "Pharmacy” at the start of the name. E.g. Pharmacy council of New Zealand will be returned in the bundle. 

* Get\<Endpoint>/Organization?name:contains=Pharmacy
  * Any organisations with a name containing "Pharmacy" at any position. E.g. This would return “Pharmacy council of New Zealand”, as well as “shopNSave Discount Pharmacy” among others in the bundle.

* Get\<Endpoint>/Organization?name:exact=Pharmacy
  * Any organisations with a name that is exactly "Pharmacy". Note: This would not return any of the above examples. However if this was Get\<Endpoint>/Organization?name:exact=shopNSave Discount Pharmacy it would return a bundle with that resource.

### Count and Offset

The HPI allows extract style searches on the Facility and Organisation indexes.

* **Facility**
  * Search for all facilites of a given type
  * Search for all facilities in a given DHB
* **Organisation**
  * Search for all organisations of a given type.

These extract style searches default to return 10 records in the search result E.g. GET\<Endpoint>/Location?type=pharm will return the first 10 HPI facilites of type pharm.

To extend an extract style search to get all facilities returned there are two parameters to include _count and _offset.
* _count - This search parameter is used to extend the search and has a limit of 50 search results.
* _offset - This search parameter is used to get the next set of facilities

E.g. For how to use these parameters
* First request - GET\<Endpoint>/Location?type=pharm&_count=50
* Second request - GET\{{ENDPOINT}}/Location?type=pharm&_count=50&_offset=50
* Third request - GET\{{ENDPOINT}}/Location?type=pharm&_count=50&_offset=100

### References between resources

References are directional - from a source to a target. 

The following example shows a reference to a Practitioner with the id of "92ZZRR"


``
"practitioner": {
"reference": "Practitioner/92ZZRR",
"display": "Dr Marcus welby"
  }
...



### Merging resource and Dormant identifiers

In some cases, a single entity may have been accidentally assigned multiple identifiers. When this is discovered to have occurred, one of the identifiers is deprecated and becomes a ‘dormant’ identifier, leaving the other as the active one. Both identifiers will appear in the active resource identifier list, with the dormant identifiers having a _use_ value of ‘old’ and the active having a _use_ value of ‘official’. 

When reading the resource, if the deprecated id is used, the resource returned will have the live id, but the identifiers will have both the live with a *use* value of ‘official’ and this dormant with a *use* value of ‘old’.)

For example, assume that there are 2 Practitioner resources exposed by the HPI, each with a single identifier. The id of the resource matches the identifier value.


```
{
  "resourceType":"Practitioner",
  "id" : "92ZZRR",
  "identifier" : [
        {"system":"https://standards.digital.health.nz/id/hpi-person","value":"92ZZRR","use":"official"}


  ]
… other data
}
```


(returned by GET\<Endpoint>/Practitioner/92ZZRR)

And 


```
{
  "resourceType":"Practitioner",
  "id" : "96YYY",
  "identifier" : [
        {"system":"https://standards.digital.health.nz/id/hpi-person","value":"96YYY","use":"official"}


  ]… other data (may be different to 92ZZRR)

}
```


(returned by GET\<Endpoint>/Practitioner/96YYY)

They are determined to be the same person, and the identifier 96YYY is deprecated (made dormant) in favour of 92ZZRR.

A Get call on \<Endpoint>/Practitioner/92ZZRR or \<Endpoint>/Practitioner/96YYYY will return the same response


```
{
  "resourceType":"Practitioner",
  "id" : "92ZZRR",
  "identifier" : [
        {"system":"https://standards.digital.health.nz/id/hpi-person","value":"92ZZRR","use":"official"},
        {"system":"https://standards.digital.health.nz/id/hpi-person","value":"96YYYY","use":"old"}


  ]
… other data

}
```




Resources that reference the Practitioner (such as the PractitionerRole resource) can use either id. For example, to return PractitionerRole resources for this Practitioner, either of the following queries will return the same set of PractitionerRole resources:

GET\<Endpoint>/PractitionerRole?practitioner=92ZZRR

GET\<Endpoint>/PractitionerRole?practitioner=96YYYY



### Contained resources

Contained resources are where the referenced (target) resource is contained within the source resource.

When a resource contains a reference to another resource, the HPI server will not normally render the references as a contained resource, only the reference links themselves will be included in responses. The exception is PractitionerRole, here the server may return contained resources if requested to. This is an example of a request made for the referenced resources to be included

GET\<Endpoint>/PractitionerRole?practitioner=99ZZZZ&_include=PractitionerRole:practitioner&_include=PractitionerRole:organization&_include=PractitionerRole:location`


### Errors

#### HTTP Error response codes

<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Status code </th>
<th> Description </th></tr>

<tr><td> 400 </td>
<td> Bad Request </td></tr>

<tr><td> 401 </td>
<td> The client needs to provide credentials, or has provided invalid credentials. </td></tr>

<tr><td> 403 </td>
<td> Authentication was provided, but the authenticated user is not permitted to perform the requested operation. </td></tr>

<tr><td> 404 </td>
<td> Resource not found </td></tr>

<tr><td> 405 </td>
<td> HTTP method not allowed </td></tr>

<tr><td> 409 </td>
<td> Resource conflict, the version provided for the resource is not the current version </td></tr>

<tr><td> 413 </td>
<td> The request body was too big for the server to accept </td></tr>

<tr><td> 422 </td>
<td> Unprocessable Entity, resource was rejected by the server because it “violated applicable FHIR profiles or server business rules” </td></tr>

<tr><td> 500 </td>
<td> General system failure </td></tr>

<tr><td> 429 </td>
<td> Exceeded quota </td></tr>
</table>


#### Error Format

Error responses may contain a FHIR operation outcome:
We’re transitioning to the following operation outcome

```

{
  "resourceType": "OperationOutcome",
  "issue": [ {
    "severity": "error",
    "code": "processing",
    "details": {
      "coding": [ {
        "system": "https://standards.digital.health.nz/ns/hip-operation-outcome-details-code",
        "code": "EM07106",
        "display": "Record version provided is out of date. The record cannot be updated"
      } ]
    },
    "expression": [ "Practitioner.identifier:HPI" ]
  } ]
}

```

But not all errors have been converted or assigned error codes, the unconverted errors use:

```

{
  "resourceType": "OperationOutcome",
  "issue": [ {
    "severity": "error",
    "code": "processing",
    "diagnostics": "Authentication: missing userid header"
  }

```


### Request Rules and Errors

* **Request rules**
  * Every request must include an:
    * http header item UserId that uniquely identifies the individual initiating the request.
    * OAuth 2 access token
    * An api-key
  * Each user must have an individual userID

* _Request errors_
  * _"Authentication: missing userid header  (HTTP 401, Error, Processing)_
  * _"Unauthorized"  (HTTP 401)_
   * _Forbidden, HTTP403_


### HTTP Header Details

* This list is any additions to standard HTTP header protocol

<h3>Request Headers</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> HTTP Header (Key) </th>
<th> HTTP Header (Value) </th>
<th> Description </th>
<th> Mandatory / Recommended / Optional </th></tr>

<tr><td> Authorization </td>
<td> Bearer {string} </td>
<td> The OAuth2 access token </td>
<td> Mandatory </td></tr>

<tr><td> userid </td>
<td> {string} </td>
<td> Client provided <br />
All requests for all resources must include an http header userid that uniquely identifies the individual initiating the request <br />
Preferably the hpi-person-id of the user would be provided if known, otherwise a userid that allows the authenticated organisation to identify the individual </td>
<td>Mandatory</td></tr>

<tr><td> Content-Type </td>
<td> Application/json </td>
<td> Supported content type </td>
<td> Mandatory </td></tr>

<tr><td> x-api-key </td>
<td> {string} </td>
<td> Te Whatu Ora Provided – issued with client credentials </td>
<td> Mandatory </td></tr>

<tr><td> User-Agent </td>
<td> {string} </td>
<td> The user-agent header is a string field that lets Te Whatu Ora know the application and version of the application accessing the HIP APIs. </td>
<td> Mandatory </td></tr>

<tr><td> X-Correlation-Id </td>
<td> {string} </td>
<td> Client provided <br />
All requests should contain a unique transaction id in the X-Correlation-Id field <br />
If present in the request this will be returned in the response, and can be used to track API calls <br />
Preferred less than 64 characters <br /> </td>
<td> Recommended </td></tr>

<tr><td> if-Match </td>
<td> {integer} </td>
<td> The version-id of the record to be updated </td>
<td> * Mandatory - PracRole update only * </td></tr>
</table>

<h3>Response Headers</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Element name </th>
<th> Value </th>
<th> Description </th></tr>

<tr><td> X-Correlation-Id </td>
<td> {string} </td>
<td> Returned if provided </td></tr>

<tr><td> X-request-Id </td>
<td> {string} </td>
<td> Unique identifier for the request within the NHI </td></tr>

<tr><td> ETag </td>
<td> {string} </td>
<td> The resource version number, returned on a Get </td></tr>
</table>

### Security

#### OAUTH2

The HPI server uses the OAUTH2 Client Credentials flow for authentication and authorisation and complies with the SMART specification for backend services


#### Scopes

The following scopes are supported. For more information on available functionality please see [Business Functions](/Onboarding.html#business-functions).

<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th> SMART on FHIR Scopes </th>
<th> Description </th>
</tr>

<tr>
<td> https://api.hip.digital.health.nz/fhir/system/Practitioner.r </td>
<td> Read access to all Practitioner resources. <br /> Gender, birthDate and ethnicity are not disclosed </td>
</tr>

<tr>
<td> https://api.hip.digital.health.nz/fhir/system/Practitioner.s </td>
<td> Search access to Practitioner resources <br /> Gender, birthDate and  ethnicity are not disclosed <br /> Practitioners tagged as confidential are excluded from the results </td>
</tr>

<tr>
<td> https://api.hip.digital.health.nz/fhir/system/Practitioner.u </td>
<td> Allows user to update practitioner records</td>
</tr>

<tr>
<td> https://api.hip.digital.health.nz/fhir/system/Practitioner.c </td>
<td> Allows user to create practitioner records </td>
</tr>

<tr>
<td> https://api.hip.digital.health.nz/fhir/system/Practitioner.a </td>
<td> Admin access to all Practitioner resources <br /> Allows access to confidential data, gender, birthDate and ethnicity <br /> Allows access to merge records </td>
</tr>

<tr>
<td> https://api.hip.digital.health.nz/fhir/system/Location.r </td>
<td> Read access to all Location resources  </td>
</tr>

<tr>
<td> https://api.hip.digital.health.nz/fhir/system/Location.s </td>
<td>Search access to all Location resources  </td>
</tr>

<tr>
<td> https://api.hip.digital.health.nz/fhir/system/Organization.r </td>
<td> Read access to all Organization resources </td>
</tr>

<tr>
<td> https://api.hip.digital.health.nz/fhir/system/Organization.s </td>
<td> Search access to all Organization resources </td>
</tr>

<tr>
<td> https://api.hip.digital.health.nz/fhir/system/PractitionerRole.r </td>
<td> Read access to all Practitioner Role resources </td>
</tr>

<tr>
<td> https://api.hip.digital.health.nz/fhir/system/PractitionerRole.s </td>
<td> Search access to all active Practitioner Role resources, inactive roles are excluded from the results </td>
</tr>

<tr>
<td> https://api.hip.digital.health.nz/fhir/system/PractitionerRole.u</td>
<td> Update access to all Practitioner Role resources.</td>
</tr>

<tr>
<td>https://api.hip.digital.health.nz/fhir/system/PractitionerRole.c </td>
<td> Create access to all Practitioner Role resources.</td>
</tr>

<tr>
<td> https://api.hip.digital.health.nz/fhir/system/PractitionerRole.a </td>
<td> Admin access to all Practitioner Role resources <br /> Allows access to confidential data <br /> Allows access to merge records </td>
</tr>
</table>

#### API Keys and Usage Plans

Clients will be emailed their API key, which should be treated as confidential information and not shared with other parties.

An api-key associates the client with a usage plan, which sets upper limits on the API request volume which is permitted. If a client exceeds their usage plan allocation an http error will be returned.

Clients will need to add there api key to the x-api-key header in each API request. If no API key is included in the request header, a “Forbidden” error will be returned

<h3>Usage Plans</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th> Plan </th>
<th> Rate </th>
<th> Burst </th>
<th> Quota </th>
</tr>

<tr>
<td> bronze </td>
<td> 1 request per second </td>
<td> 5 </td>
<td> 10,000 requests per day </td>
</tr>

<tr>
<td> silver </td>
<td> 5 requests per second </td>
<td> 25 </td>
<td> 250,000 requests per day </td>
</tr>

<tr>
<td> gold </td>
<td> 10 requests per second </td>
<td> 50 </td>
<td> 500,000 requests per day </td>
</tr>
</table>

All test accounts will be assigned to the bronze usage plan

Production accounts will be assigned to the silver usage plan. If an Organisation wished to be assigned to the gold usage plan, they should contact the Te Whatu Ora [HPI access team](HI_Provider@health.govt.nz)

If an application reaches its usage plan limit an HTTP 429 error will be returned. The expected behaviour is that the application will retry several times with an exponentially increasing delay


#### GEO Restriction 

GEO Restriction rules prevent access from clients with IPs located in countries other than those listed below. If you need access from another country,  please contact our team by completing the [Enquiry form](https://mohapis.atlassian.net/servicedesk/customer/portal/3/group/11/create/36) or adding a comment to the online onboarding request form if you have one.

* New Zealand
* Australia
* Canada
* Cook Islands
