


### Update PractitionerRole

#### Overview

An update on an HPI PractitionerRole resource allows an authorised user to update the contact details, messaging address (EDI) or add an end-date.

Prior to an update a user should have the hpi-practitionerrole-id and have the latest version of the record (the current version-id)

<div>
{% include update-practitionerrole.svg %}
</div>

#### Processing steps:

1.	The user initiates updating a PractitionerRole in the integrating application
2.	The user selects a role to update and supplies new contact details or an end date
3.	The API consumer sends an HTTP PUT request (a FHIR update) containing the previously returned Practitioner Role with the new details entered by the user. E.g. PUT\<Endpoint>/PractitionerRole/R00000009-H
4.	The request is validated - ALT: Validation failure. OperationOutcome resource returned
5.	The supplied PractitionerRole is updated on the HPI
6.	The HPI FHIR API confirms a successful update – HTTP 200 ok
7.	The integrating application indicates to the user the update has been successful and retains the version number for future requests relating to this record

#### Udate PractitionerRole Examples

For Put PractitionerRole examples [click here](putPractitionerRoleExample.html)

### Update PractitionerRole Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Update PractitionerRole rules**
  * A PractitionerRole update can only modify contact point, messaging address and period end-date
  * A PractitionerRole update must contain:
    * a valid hpi-practitionerrole-id
    * the curret version-id (added to the header as 'if-Match' {version-id}
    * an hpi-person-id matching the PractitionerRole record
    * an hpi-organisation-id and/or the hpi-facility-id (if present on the PractitionerRole record)
    * a PractitionerRole code (if present on the PractitionerRole record)
  * A PractitionerRole-status-reason is mandatory when a period end-date is supplied
  * A PractitionerRole update request cannot create a duplicate, or overlap another PractitionerRole record

* _Update PractitionerRole errors_
  * _"hpi-person-id invalid" (HTTP 422, Unprocessable, Error, Processing)_
  * _"hpi-person-id is required" (HTTP 422, Unprocessable, Error, Processing)_
  * _"hpi-organization-id or hpi-facility-id is required" (HTTP 422, Unprocessable, Error, Processing)_
  * _"Resource validation error: duplicate" (HTTP 422, Unprocessable, Error, Processing)_
  * _"PractitionerRole code requird" (HTTP 422, Unprocessable, Error, Processing)_
  * _"practitionerRole-status-reason is required" (HTTP 422, Unprocessable, Error, Processing)_

---

* **PractitionerRole update contact and period end-date rules and errors**
  * See [Add PractitionerRole rules and errors](/addPracRole.html)
