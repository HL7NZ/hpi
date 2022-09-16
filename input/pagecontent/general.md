
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

For more information look at the __Get Use cases__ in the menu


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


### Search resource using a string

* For a simple string search, a string parameter serves as the input for a search against sequences of characters.
* By default, a field matches a string query if the value of the field equals or starts with the supplied parameter value.
* The _:contains modifier_ returns results that include the supplied parameter value anywhere within the field being searched.
* The _:exact modifier_ returns results that match the entire supplied parameter, including casing and accents.


* **Examples**

* Get\<Endpoint>/Organization?name=Pharmacy
  * Any organisations with the name "Pharmacy” at the start of the name. E.g. Pharmacy council of New Zealand will be returned in the bundle. 

* Get\<Endpoint>/Organization?name:contains=Pharmacy
  * Any organisations with a name containing "Pharmacy" at any position. E.g. This would return “Pharmacy council of New Zealand”, as well as “shopNSave Discount Pharmacy” among others in the bundle.

* Get\<Endpoint>/Organization?name:exact=Pharmacy
  * Any organisations with a name that is exactly "Pharmacy". Note: This would not return any of the above examples. However if this was Get\<Endpoint>/Organization?name:exact=shopNSave Discount Pharmacy it would return a bundle with that resource.



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

Get\<Endpoint>/PractitionerRole?identifier=https://standards.digital.health.nz/ns/hpi-practitionerrole-id\|R00000297&_include=PractitionerRole:practitioner&_include=PractitionerRole:organization&_include=PractitionerRole:location`

### Request Rules and Errors

* **Request rules**
  * Every request must include an:
    * http header item UserId that uniquely identifies the individual initiating the request.
    * OAuth 2 access token
  * Each user must have an individual userID

* _Request errors_
  * _"Authentication: missing userid header  (HTTP 401, Error, Processing)_
  * _"Unauthorized"  (HTTP 401)_
 
### HTTP Header Details

All requests for all resources must include an http header **userid** that uniquely identifies the individual initiating the request. Preferably the hpi-person-id of the user would be provided, if known, otherwise a userid that allows the authenticated organisation to identify the individual.

### Security
The HPI server uses the OAUTH2 Client Credentials flow for authentication and authorisation and complies with the SMART specification for backend services

The following scopes are supported

<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Scope</th><th>Description</th></tr>
<tr><td> https://api.hip.digital.health.nz/fhir/practitioner:read   </td><td> Read access to all Practitioner resources. <br /> Gender, birthDate and ethnicity are not disclosed. </td></tr>
<tr><td> https://api.hip.digital.health.nz/fhir/practitioner:search </td><td> Search access to Practitioner resources. <br /> Gender, birthDate and  ethnicity are not disclosed. <br /> Practitioners tagged as confidential are excluded from the results. </td></tr>
<tr><td>https://api.hip.digital.health.nz/fhir/practitioner:write  </td><td> Write access to all Practitioner resources. <br /> Allows user to create and update practitioner records. </td></tr>
<tr><td> https://api.hip.digital.health.nz/fhir/practitioner:admin  </td><td> Admin access to all Practitioner resources. <br /> Allows access to confidential data, gender, birthDate and ethnicity. </td></tr>
<tr><td>https://api.hip.digital.health.nz/fhir/location:read       </td><td> Read access to all Location resources.  </td></tr>
<tr><td>https://api.hip.digital.health.nz/fhir/location:search    </td><td>Search access to all Location resources  </td></tr>
<tr><td> https://api.hip.digital.health.nz/fhir/location:write     </td><td> Write access to all Location resources. </td></tr>
<tr><td>https://api.hip.digital.health.nz/fhir/location:admin    </td><td> Admin access to all Location resources.</td></tr>
<tr><td>https://api.hip.digital.health.nz/fhir/organization:read  </td><td> Read access to all Organization resources. </td></tr>
<tr><td> https://api.hip.digital.health.nz/fhir/organization:search </td><td> Search access to all Organization resources </td></tr>
<tr><td>https://api.hip.digital.health.nz/fhir/organization:write </td><td> Write access to all Organization resources. </td></tr>
<tr><td>https://api.hip.digital.health.nz/fhir/organization:admin  </td><td> Admin access to all Organization resources.</td></tr>
<tr><td> https://api.hip.digital.health.nz/fhir/pracrole:read     </td><td> Read access to all Practitioner Role resources.</td></tr>
<tr><td>https://api.hip.digital.health.nz/fhir/pracrole:search    </td><td> Search access to all active Practitioner Role resources, inactive roles are excluded from the results. </td></tr>
<tr><td>https://api.hip.digital.health.nz/fhir/pracrole:write    </td><td> Write access to all Practitioner Role resources.</td></tr>
<tr><td> https://api.hip.digital.health.nz/fhir/pracrole:admin    </td><td> Admin access to all Practitioner Role resources. <br /> Allows access to confidential data.</td></tr>
</table>


