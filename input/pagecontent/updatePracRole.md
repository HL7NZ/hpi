


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

[For Request rules and errors click here](./general.html#request-rules-and-errors)

* **Update PractitionerRole rules**
  * A PractitionerRole update can only modify contact point, messaging address and period end-date
  * A PractitionerRole update must contain:
    * The PractitionerRole id
    * The PractitionerRole identifier
  * A PractitionerRole-status-reason is mandatory when a period end-date is supplied
  * A PractitionerRole update request cannot create a duplicate, or overlap another PractitionerRole record

* _Update PractitionerRole errors_
  * _"A PractitionerRole update request may only update telecom, messaging-address, period, and practitionerRole-status-reason."_

---

* **PractitionerRole update contact and period end-date rules and errors**
  * See [Create PractitionerRole rules and errors](./createPracRole.html)
