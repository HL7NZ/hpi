

### Add new PractitionerRole resource

<div>
{% include add-practitionerrole.svg %}
</div>

Add new PractitionerRole processing steps:

1. The user initiates creating a new PractitionerRole in the integrating application
2. The integrating application sends an HTTP POST request (a FHIR create) containing the PractitionerRole details E.g. Post\<Endpoint>/PractitionerRole
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. A PractitionerRole record is created and a hpi-practitionerrole-id issued
5. The HPI FHIR API confirms a successful update – HTTP 201 Created status code
6. The integrating application indicates to the user the create has been successful
7. The integrating application retains the hpi-practitionerrole-id and version number for future requests relating to this record

### Add PractitionerRole Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Add PractitionerRole rules**
  * A PractitionerRole add request must include a valid hpi-person-id, an hpi-facility-id and/or hpi-organisation-id
  * A PractitionerRole add request may include:
    * Role code
    * Period (start date and end if applicable)
    * Messaging-address (EDI)
    * Contact details (telecom)
  * A PractitionerRole-status-reason is mandatory when a period end-date is supplied
  * A PractitionerRole add request cannot create a duplicate, or overlap another PractitionerRole record [See also](/glossary.html#practitioner-role)

* _Add PractitionerRole errors_
  * _"hpi-person-id invalid" (HTTP 422, Unprocessable, Error, Processing)_
  * _"hpi-person-id is required" (HTTP 422, Unprocessable, Error, Processing)_
  * _"hpi-organization-id or hpi-facility-id is required" (HTTP 422, Unprocessable, Error, Processing)_
  * _"Resource validation error: duplicate" (HTTP 422, Unprocessable, Error, Processing)_
  * _"practitionerRole-status-reason is required" (HTTP 422, Unprocessable, Error, Processing)_

---

* **Add PractitionerRole period rules** (if supplied)
  * A PractitionerRole period date must be formatted YYYY-MM-DD
  * A PractitionerRole period start date must be less than, or equal to end date

* _Add PractitionerRole period errors_
  * _Period is not valid; format must be yyyy-mm-dd_
  * _Period start date must be less than, or equal to end date_

---

*	**Add PractitionerRole contact rules** (If supplied).
  * A request must not result in a duplicate contact
  * A contact point value must have a valid format (HISO recommends)
    * _Valid mobile phone number format_
    * International ITU-T E.164 numbers are variable length numeric strings without punctuation, composed of country code, area code or mobile network code and subscriber number
    * Numbers should be entered, validated and displayed as separate components, eg: 64 4 232nnnn, 64 20 412nnnnn
    * _Valid email format_
    * an email address must have a local-part@domain-part format
    * the address length must not exceed 256 characters
    * can contain any UTF-8 characters except control characters.
  * Contact period must be formatted YYYY-MM-DD
  * Contact period start date must be less than, or equal to end date
  * Rank must be unique across the set of supplied contactpoints, Gaps in the sequence of rank are allowed, 1 is the highest rank, Rank 0 is invalid, When rank is not supplied it will be assigned the next lowest rank within the PracRole telecom contactpoints.

* _Add PractitionerRole contact errors_
  * _The contact point you are creating is a duplicate of another on this record_
  * _The mobile phone format is invalid_
  * _The email format is invalid_
  * _Contact period is invalid; format must be yyyy-mm-dd_
  * _Contact period start date must be less than or equal to a contact point period end date_ 
