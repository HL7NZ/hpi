

### Update Practitioner Overview

The update Practitioner operations allow an authorised user to update a person's details on the HPI. The operations are broken down into four custom update operations:

* **Update-core** - To update name, birthdate and death-date
* **Update-personal-details** - To update gender, ethnicity and languages
* **Update-educational-qualifications** - To update educational qualifications
* **Update-registration** - To update registration details (APC, scope of practice etc.)

### Update-core

* Allows an authorised user to update a person's core details
  * name
  * birthdate
  * death-date

<div>
{% include update-practitioner-core.svg %}
</div>

**Update-core processing steps:**

1. The user provides updated core details
2. The integrating application sends an HTTP Post request using the $update-core operation to the HPI E.g. Post<Endpoint>/Practitioner/$update-core
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The core details are updated
5. The updated record is returned with an HTTP 200 ok response
6. The integrating application displays the updated details to the user

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

<tr><td> cpn </td>
<td> Mandatory </td>
<td> The hpi-person-id (cpn) </td></tr>

<tr><td> version-id </td>
<td> Mandatory </td>
<td> The current Practitioner record version number </td></tr>
 
<tr><td> ra-identifier </td>
<td> * Mandatory for an RA update </td>
<td> The RA identifier </td></tr>

<tr><td> name </td>
<td> Optional </td>
<td> An update replaces the full set of name attributes (use, prefix, given, family) </td></tr>

<tr><td> death-date </td>
<td> Optional </td>
<td> The date of death, can only be set by an admin user </td></tr>

<tr><td> birth-date </td>
<td> Optional </td>
<td> The birthdate, can only be set by an admin user </td></tr>
</table>

* Behaviour:
  * The hpi-person-id (cpn) is validated
  * The Practitioner version-id is validated
  * The parameters are validated

* update-core example request:

```  
{
"resourceType":"Parameters",
  "parameter":[
    {
      "name":"cpn",
      "valueString":"99ZZRT"
    },    {
      "name":"version-id",
      "valueString":"29450"
    },
    {
      "name":"ra-identifier",
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


#### Update-core Rules and Errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Practitioner update rules**
  * A Practitioner update must include a valid hpi-person-id
  * A Practitioner update must include the official hpi-person-id
  * A Practitioner update must include the latest version-id for the practitioner record
  * An RA must include their RA identifier and can only update records for their own Practitioners

* _Practitioner update errors_

* **Practitioner update-core 'name' rules**
  * All name rules in [add request apply](/addPractitioner.html#add-practitioner-rules-and-errors) and,
  * Cannot update a name to name use = old
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



### Update-personal-details

The `$update-personal-details` operation updates a Practitioner's gender,
ethnicity and communication languages. It is a type-level operation invoked
with HTTP `POST` at `[base]/Practitioner/$update-personal-details`.

The caller must have Practitioner update authorization. RA callers must
provide their RA identifier, which must be valid for the Practitioner. The
operation validates the CPN and current version before applying an update.
All supplied personal-detail values are validated before persistence; a
rejected request does not partially update the record. A successful update
returns the updated Practitioner.

#### Input parameters

| Parameter | Type | Cardinality | Description |
| --- | --- | --- | --- |
| `cpn` | `string` | 1..1 | The HPI person identifier. |
| `version-id` | `string` | 1..1 | The current Practitioner version identifier. A stale version is rejected. |
| `ra-identifier` | `string` | 0..1 | Required for an RA update; identifies the RA source for this Practitioner. |
| `gender` | `code` | 0..1 | FHIR AdministrativeGender code: `male`, `female`, `other` or `unknown`. |
| `ethnicity` | `code` | 0..6 | An ethnicity code from the HPI-bound NZ ethnicity value set. Repeated values replace the complete current set. |
| `language` | `code` | 0..10 | A language code from the HPI-bound language value set. Repeated values replace the complete current set. |

Omitted parameters preserve their current values. An omitted gender leaves
gender unchanged; omitted ethnicity or language parameters leave their
respective collections unchanged. Supplying the same values does not create a
new version. The current operation parameter shape cannot distinguish an
omitted collection from an explicitly empty one, so it does not provide a way
to clear ethnicity or languages. Language preference flags are not accepted
by this operation.

Validation errors are returned as an `OperationOutcome` identifying the
invalid element where supported. Invalid terminology values are rejected;
stale versions return a conflict response. The operation makes no change when
all optional update parameters are absent.

#### Example request

```json
{
  "resourceType": "Parameters",
  "parameter": [
    { "name": "cpn", "valueString": "28AQGN" },
    { "name": "version-id", "valueString": "32718" },
    { "name": "ra-identifier", "valueString": "353542" },
    { "name": "gender", "valueCode": "female" },
    { "name": "ethnicity", "valueCode": "10000" },
    { "name": "ethnicity", "valueCode": "12116" },
    { "name": "language", "valueCode": "eng" },
    { "name": "language", "valueCode": "mri" }
  ]
}
```

The operation does not change file-upload demographic processing. Gender is
the FHIR `Practitioner.gender` element; it is not a separate sex field.

### Update-educational-qualifications

* Allows an authorised user to update educational qualifications


### Update-registration

* Allows an authorised user to update registration details (APC, scope of practice etc.)
