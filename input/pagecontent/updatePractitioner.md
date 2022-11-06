

### Update Practitioner Overview

The update Practitioner operations allow an authorised user to update a health providers details on the HPI. The operations are broken down into four custom update operations:

* **update-core** - To update Provider name, birthdate and death-date
* **update-personal-details** - To update Provider gender, ethnicity and languages
* **update-educational-qualifications - To update a Providers education qualifications
* **update-registration - To update a providers registration details (APC, scope of practice etc.)

### update-core

* Allows an authorised user to update a Provider's core details
  * name
  * birthdate
  * death-date

<div>
{% include update-practitioner-core.svg %}
</div>

**update-core processing steps:**

1. The user provides updated Provider core details
2. The integrating application sends an HTTP Post request using the $update-core operation to the HPI E.g. Post<Endpoint>/Patient/$update-core
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The Providers core details are updated
5. The updated Provider record is returned with an HTTP 200 ok response
6. The integrating application displays the updated Provider details to the user

<h3>In Parameters</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th> Parameter name </th>
<th> Mandatory / Optional </th>
<th> Description </th></tr>

<tr><td> identifier </td>
<td> * Mandatory for an RA update </td>
<td> The RA identifier </td></tr>

<tr><td> version-id </td>
<td> Mandatory </td>
<td> The current Practitioner record version number </td></tr>

<tr><td> name </td>
<td> Optional </td>
<td> Must provide all if updating (use, prefix, given, family) </td></tr>

<tr><td> death-date </td>
<td> Optional </td>
<td> The Providers date of death, can only be set by an admin user </td></tr>

<tr><td> birth-date </td>
<td> Optional </td>
<td> The Providers birthdate, can only be set by an admin user </td></tr>
</table>

* Behaviour:
  * The HPI is validated
  * The Practitioner version-id is validated
  * The parameters are validated

set-address example request:

```  
{
"resourceType":"Parameters",
  "parameter":[
    {
      "name":"version-id",
      "valueInteger":29450
    },
    {
      "name":"identifier",
      "valueString":"998877"
    },
    {
      "name":"name",
        "valueHumanName":
           {
             "use":"official",
             "family":"FhirClientPractitionerUpdateIntegrationTest",
             "given":
                 ["updateNrPractitioner"]
           }
    },
    {
      "name":"death-date",
      "valueDate":"2021-11-11"
    },
    {
      "name":"birth-date",
      "valueDate":"1990-12-31"
    }
  ]
}

```


#### update-core Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* Practitioner update rules
  * A Practitioner update must include a valid hpi-person-id
  * A Practitioner update must include the official hpi-person-id
  * A Practitioner update must include the latest version-id for the practitioner record
  * An RA must include an RA identifier and can only update records for their own Practitioners

* _Practitioner update errors_

* **Practitioner update-core 'name' rules**
  * All name rules in add request apply and,
  * Cannot update a name with name use = old
  * If a usual or official name is replaced the previous name/s will be returned as name use old
  * Cannot add a name that has been deleted by Te Whatu Ora

* _Practitioner update-core 'name' errors_


* **Practitioner update-core 'birthdate' rules**
  * All birthdate rules in add request apply and,
  * An update will replace the current birthdate.

* _Practitioner update-core 'birthdate' errors_
 

* **Practitioner update-core 'death-date' rules**
  * death-date must be a complete date and formatted YYYY-MM-DD
  * death-date cannot be a future date
  * death-date must be greater than birthdate
  * An update will replace the current death-date.

* _Practitioner update-core 'death-date' errors_



### update-personal-details

* Allows an authorised user to update a Provider's personal details
  * gender
  * ethnicity
  * languages

### update-educational-qualifications

* Allows an authorised user to update a Provider's educational qualifications


### update-registration

* Allows an authorised user to update a Provider's registration details (APC, scope of practice etc.)
