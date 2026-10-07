

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

* Allows an authorised user to update personal details
  * gender
  * ethnicity
  * languages

### Update-educational-qualification

* Allows an authorised user to add, amend, or remove a practitioner’s educational qualifications.
* This operation is invoked as a FHIR `Parameters` resource using an HTTP POST request to the HPI endpoint, for example: `POST <Endpoint>/Practitioner/$update-educational-qualification`

#### Overview

A practitioner’s educational qualifications are changed by sending the live CPN, the current record version, and one or more repeating `educational-qualification` items with an action of `add`, `amend`, or `remove`. The request is validated before persistence, and the response returns the updated Practitioner resource with the latest version identifier.

#### Update-educational-qualification processing steps

1. The user selects one or more educational qualification changes in the integrating application
2. The application sends an HTTP POST request to the HPI using the `$update-educational-qualification` operation
3. The HPI validates the CPN, `version-id`, and caller authorisation context before applying any change
4. Each `educational-qualification` item is checked for the correct action, required fields, and valid country code rules
5. Matching items are added, updated, or removed without changing other educational qualifications that were not included in the request
6. The updated Practitioner record is persisted and returned to the caller with HTTP 200
7. The integrating application stores the new version identifier and refreshes the practitioner view

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
<td> The live HPI person identifier (CPN) of the practitioner being updated. </td></tr>

<tr><td> version-id </td>
<td> Mandatory </td>
<td> The current Practitioner record version number. This is used to ensure the update is based on the current record state. </td></tr>

<tr><td> ra-identifier </td>
<td> Mandatory for RA updates </td>
<td> The responsible authority identifier for the caller. This is required when the requesting user is operating under an RA context. </td></tr>

<tr><td> educational-qualification </td>
<td> Mandatory </td>
<td> A repeating parameter containing one or more qualification change items. Each item includes an `action`, and for `amend`/`remove` it includes an `id`. </td></tr>

<tr><td> educational-qualification.action </td>
<td> Mandatory </td>
<td> The action to apply: `add`, `amend`, or `remove`. </td></tr>

<tr><td> educational-qualification.id </td>
<td> Mandatory for amend/remove </td>
<td> The existing educational qualification identifier on the Practitioner. This is not an array position. </td></tr>

<tr><td> educational-qualification.fullname </td>
<td> Mandatory for add/amend </td>
<td> The full name of the educational qualification. </td></tr>

<tr><td> educational-qualification.shortname </td>
<td> Optional for add/amend </td>
<td> The abbreviated qualification name used where space is limited. </td></tr>

<tr><td> educational-qualification.year </td>
<td> Mandatory for add/amend </td>
<td> The year the qualification was awarded, supplied as a valid FHIR date value in `YYYY` format. </td></tr>

<tr><td> educational-qualification.institution </td>
<td> Mandatory for add/amend </td>
<td> The institution or education provider that awarded the qualification. </td></tr>

<tr><td> educational-qualification.city </td>
<td> Mandatory for add/amend </td>
<td> The city where the institution is located. </td></tr>

<tr><td> educational-qualification.country </td>
<td> Mandatory for add/amend </td>
<td> The country in which the institution is located, using a valid ISO 3166-1 alpha-2 country code. </td></tr>
</table>

* Behaviour:
  * The `cpn` must identify a live HPI practitioner record
  * The `version-id` must match the current Practitioner record version
  * The caller must be authorised and must satisfy the relevant RA/NR rules for the practitioner
  * Each `educational-qualification` item is processed independently within the same request
  * Duplicate submissions are treated as idempotent and therefore do not fail if the requested change has already been applied
  * Only the qualifications included in the request are changed; all other educational qualifications remain as they are

* Update-educational-qualification example request:

```json
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "cpn",
      "valueString": "28AQGN"
    },
    {
      "name": "version-id",
      "valueString": "32718"
    },
    {
      "name": "ra-identifier",
      "valueString": "353542"
    },
    {
      "name": "educational-qualification",
      "part": [
        { "name": "action", "valueCode": "add" },
        { "name": "fullname", "valueString": "Bachelor of Science" },
        { "name": "shortname", "valueString": "BSc" },
        { "name": "year", "valueDate": "2000" },
        { "name": "institution", "valueString": "University of Otago" },
        { "name": "city", "valueString": "Dunedin" },
        { "name": "country", "valueCode": "NZ" }
      ]
    },
    {
      "name": "educational-qualification",
      "part": [
        { "name": "action", "valueCode": "amend" },
        { "name": "id", "valueString": "edu-12345" },
        { "name": "fullname", "valueString": "Bachelor of Science (Honours)" },
        { "name": "shortname", "valueString": "BSc(Hons)" },
        { "name": "year", "valueDate": "2001" },
        { "name": "institution", "valueString": "University of Otago" },
        { "name": "city", "valueString": "Dunedin" },
        { "name": "country", "valueCode": "NZ" }
      ]
    },
    {
      "name": "educational-qualification",
      "part": [
        { "name": "action", "valueCode": "remove" },
        { "name": "id", "valueString": "edu-67890" }
      ]
    }
  ]
}
```

#### Update-educational-qualification Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Update-educational-qualification rules**
  * A practitioner update request must include a valid `cpn` and the current `version-id`
  * The caller must be an authorised RA or NR user with permission to update the practitioner record
  * The supplied `ra-identifier` must be present when the caller is operating under an RA context and must match the relevant practitioner source authority
  * Each `educational-qualification` item must include an `action` value of `add`, `amend`, or `remove`
  * `add` and `amend` requests must include the required qualification content: `fullname`, `shortname`, `year`, `institution`, `city`, and `country`
  * `amend` and `remove` requests must include the existing educational qualification `id`
  * The `id` must match an existing educational qualification on the Practitioner record or an equivalent persisted identifier within the HPI context
  * A country code must be a valid ISO 3166-1 alpha-2 value and must pass HPI validation before persistence
  * The operation is idempotent for duplicate requests: an already-applied item does not cause a failure when the request is otherwise valid
  * Only the qualifications mentioned in the request are changed; all other educational qualifications continue unchanged

* _Update-educational-qualification errors_
  * _`cpn` is required and must identify a live practitioner record_
  * _`version-id` is required and must match the current record version_
  * _The caller is not authorised to update this practitioner record_
  * _The supplied RA identifier does not match the practitioner’s source authority_
  * _`educational-qualification.action` is required and must be one of `add`, `amend`, or `remove`_
  * _`educational-qualification.id` is required for `amend` and `remove`_
  * _The educational qualification payload is incomplete or contains invalid values_
  * _The supplied country code is not valid_
  * _The practitioner record was not updated because validation failed before persistence_

---

* **Update-educational-qualification response behaviour**
  * On successful update the HPI returns the updated Practitioner resource with the new educational qualification data and incremented version identifier
  * The operation is subject to optimistic locking and will reject stale updates with a version conflict response

* _Update-educational-qualification response errors_
  * _Version conflict: the supplied version-id is stale_
  * _Forbidden: the caller does not have the required practitioner update authority_
  * _Bad request: required educational qualification parameters are missing or malformed_

This operation supports the requirement to maintain a practitioner’s educational qualification history while allowing approved users to add, replace, or remove entries without disturbing unrelated qualification data.

### Update-registration

* Allows an authorised Responsible Authority (RA) user to update a practitioner’s registration details, including the annual practising certificate (APC), registration status, scope of practice, additional authorisations, and practice conditions.
* This operation is invoked as a FHIR Parameters resource using an HTTP POST request to the HPI endpoint, for example: `POST <Endpoint>/Practitioner/$update-registration`

#### Overview

A practitioner’s registration is updated by sending the live CPN, the current record version, and the registration payload to be replaced or adjusted. The request is validated before the HPI updates the practitioner record, and the returned resource includes the updated registration state and the new version identifier.

#### Update-registration processing steps

1. The user selects a practitioner whose registration is to be updated in the integrating application
2. The integrating application sends an HTTP POST request to the HPI using the `$update-registration` operation
3. The request payload is validated for mandatory identifiers, valid dates and periods, and a valid RA context
4. The HPI checks that the CPN exists, the `version-id` matches the current practitioner version, and the caller’s RA matches the practitioner source
5. The registration details are merged and validated using the current HPI registration rules
6. The updated practitioner record is persisted and the new record version is returned to the caller
7. The integrating application displays the updated registration details and retains the new version identifier for subsequent updates

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
<td> The live HPI person identifier (CPN) of the practitioner being updated. </td></tr>

<tr><td> version-id </td>
<td> Mandatory </td>
<td> The current Practitioner record version number. This is used for optimistic concurrency checks. </td></tr>

<tr><td> ra-identifier </td>
<td> Mandatory for RA updates </td>
<td> The responsible authority identifier for the caller, used to ensure the caller can only update registrations for their own practitioners. </td></tr>

<tr><td> registration-initial-date </td>
<td> Optional </td>
<td> The date the practitioner was originally registered. If omitted during an update, the current value is retained where available. </td></tr>

<tr><td> registration-status-code </td>
<td> Mandatory </td>
<td> A FHIR `part` containing a status code and corresponding period. This represents the current registration status and when it applies. </td></tr>

<tr><td> period </td>
<td> Mandatory </td>
<td> The APC validity period for the practitioner. It must include both start and end dates. </td></tr>

<tr><td> scope-of-practice </td>
<td> Mandatory </td>
<td> One or more `part` values containing a code and period describing the scope of practice for the practitioner. </td></tr>

<tr><td> additional-authorisation </td>
<td> Optional </td>
<td> One or more `part` values containing an authorisation code and period. </td></tr>

<tr><td> condition-on-practice </td>
<td> Optional </td>
<td> One or more `part` values containing a description and period for any practice condition or restriction. </td></tr>
</table>

* Behaviour:
  * The `cpn` must resolve to an existing live practitioner record
  * The `version-id` must match the current practitioner version
  * The caller must be an authorised RA user and must match the practitioner’s RA context
  * Registration collection data is treated as replace-with-history, not hard delete
  * If a collection item is omitted from an update, it is end-dated or made inactive rather than permanently deleted

* Update-registration example request:

```json
{
  "resourceType": "Parameters",
  "parameter": [
    {
      "name": "cpn",
      "valueString": "28AQGN"
    },
    {
      "name": "version-id",
      "valueString": "32718"
    },
    {
      "name": "ra-identifier",
      "valueString": "353542"
    },
    {
      "name": "registration-initial-date",
      "valueDate": "2022-11-22"
    },
    {
      "name": "registration-status-code",
      "part": [
        {
          "name": "code",
          "valueCode": "current"
        },
        {
          "name": "period",
          "valuePeriod": {
            "start": "2022-11-22"
          }
        }
      ]
    },
    {
      "name": "period",
      "valuePeriod": {
        "start": "2026-04-01",
        "end": "2027-03-31"
      }
    },
    {
      "name": "scope-of-practice",
      "part": [
        {
          "name": "code",
          "valueCode": "CHIR"
        },
        {
          "name": "period",
          "valuePeriod": {
            "start": "2022-11-22"
          }
        }
      ]
    },
    {
      "name": "additional-authorisation",
      "part": [
        {
          "name": "code",
          "valueCode": "IMMU"
        },
        {
          "name": "period",
          "valuePeriod": {
            "start": "2022-11-22"
          }
        }
      ]
    },
    {
      "name": "condition-on-practice",
      "part": [
        {
          "name": "description",
          "valueString": "Supervision required for first 6 months"
        },
        {
          "name": "period",
          "valuePeriod": {
            "start": "2022-11-22"
          }
        }
      ]
    }
  ]
}
```

#### Update-registration Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Update-registration rules**
  * A practitioner update-registration request must include a valid `cpn` and the current `version-id`
  * The caller must be an authorised RA user with permission to update practitioner details
  * The supplied `ra-identifier` must match the current practitioner source context
  * `registration-status-code` is mandatory and must include a valid code and period
  * `period` is mandatory and must represent the APC validity window with `start` and `end`
  * `scope-of-practice` is mandatory and must include at least one code/period pair
  * All period values must be valid and must have `start <= end`
  * If `registration-initial-date` is omitted on an update, the existing date must be retained if already present
  * Collection-based registration values such as scope, authorisation, and conditions use replace-with-history semantics
  * Omitted previous collection items are not deleted; they are marked inactive or end-dated rather than hard removed
  * Status and code values must be valid values from the relevant HISO and NZHTS code sets

* _Update-registration errors_
  * _`cpn` is required and must identify a live practitioner record_
  * _`version-id` is required and must match the current record version_
  * _The caller is not permitted to update this practitioner record_
  * _The supplied RA identifier does not match the practitioner’s source authority_
  * _Registration status code and period are required_
  * _APC period must include a valid start and end date_
  * _Scope of practice entries are required and must contain valid code and period values_
  * _One or more period values are invalid or end before start_
  * _The practitioner registration payload failed validation and was not persisted_

---

* **Update-registration date and period rules**
  * A registration period or status period must be formatted as a valid FHIR period and must not end before it starts
  * `registration-initial-date` may be supplied as a past date, today, or a future date to support pre-registration scenarios
  * The HPI preserves the existing initial registration date when a new update omits it

* _Update-registration date and period errors_
  * _Period start cannot be after period end_
  * _Registration status period is required_
  * _A supplied date is not valid for the registration update request_

---

* **Update-registration collection semantics**
  * `scope-of-practice`, `additional-authorisation`, and `condition-on-practice` are updated as collections
  * Items supplied in the request replace or add active values for the current registration state
  * Items not supplied in the request are treated as inactive or end-dated to preserve history and support auditability

* _Update-registration collection errors_
  * _The registration payload contains invalid collection items or invalid coding values_
  * _Validation of the merged registration state failed before persistence_

---

* **Update-registration response behaviour**
  * On successful update the HPI returns the updated Practitioner resource with the new registration data and incremented version identifier
  * The operation is subject to optimistic locking and will reject stale updates with a version conflict response

* _Update-registration response errors_
  * _Version conflict: the supplied version-id is stale_
  * _Forbidden: the caller does not have the required practitioner update authority_
  * _Bad request: required registration parameters are missing or malformed_

This operation supports the maintainers’ requirement to update core registration details without removing the historical record, while still providing the current active registration data and version-aware concurrency controls.
