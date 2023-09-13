

### Create PractitionerRole Overview

The Create PractitionerRole operation is initia

initiated by a user who needs to create a new identity record for a person not found on the NHI. <br />
The user has sourced the required identity information, done a thorough search of the NHI, and initiates a request to create a new patient identity record in the NHI.
<div>
{% include create-practitionerrole.svg %}
</div>

Create new PractitionerRole processing steps:

1. The user initiates creating a new PractitionerRole in the integrating application
2. The integrating application sends an HTTP POST request (a FHIR create) containing the PractitionerRole details E.g. Post\<Endpoint>/PractitionerRole
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. A PractitionerRole record is created and a hpi-practitionerrole-id issued
5. The HPI FHIR API confirms a successful update – HTTP 201 Created status code
6. The integrating application indicates to the user the create has been successful
7. The integrating application retains the hpi-practitionerrole-id and version number for future requests relating to this record

### Create PractitionerRole Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

#### Create PractitionerRole rules
* A create PractitionerRole request must include:
  * a valid hpi-person-id,
  * an hpi-facility-id and/or hpi-organisation-id
  * a valid role code
* A create PractitionerRole request may include:
  * Period (start date and end if applicable)
  * Messaging-address (EDI)
  * Contact details (telecom)
* A PractitionerRole-status-reason is mandatory when a period end-date is supplied
* A create PractitionerRole request must not create a duplicate, or overlap another PractitionerRole record [See also](/glossary.html#practitioner-role)


---


* _Create PractitionerRole errors_
  * _"hpi-person-id invalid" (HTTP 422, Unprocessable, Error, Processing)_
  * _"hpi-person-id is required" (HTTP 422, Unprocessable, Error, Processing)_
  * _"hpi-organization-id or hpi-facility-id is required" (HTTP 422, Unprocessable, Error, Processing)_
  * _"Resource validation error: duplicate" (HTTP 422, Unprocessable, Error, Processing)_
  * _"PractitionerRole-status-reason is required" (HTTP 422, Unprocessable, Error, Processing)_



#### Create PractitionerRole - Period rules (if supplied)
* A PractitionerRole period date must be formatted YYYY-MM-DD
* A PractitionerRole period start date must be less than, or equal to end date


---


* _Create PractitionerRole - Period errors_
  * _Period is not valid; format must be yyyy-mm-dd_
  * _Period start date must be less than, or equal to end date_


#### Create PractitionerRole - Contact rules (If supplied).
*	A request must not result in a duplicate contact
*	A contact point value must have a valid format (HISO recommends)
  * **Valid mobile phone number format**
    * International ITU-T E.164 numbers are variable length numeric strings without punctuation, composed of country code, area code or mobile network code and subscriber number
    * Numbers should be entered, validated and displayed as separate components, eg: 64 4 232nnnn, 64 20 412nnnnn
  * **Valid email format**
    * an email address must have a local-part@domain-part format
    * the address length must not exceed 256 characters
    * can contain any UTF-8 characters except control characters.
* Contact period must be formatted YYYY-MM-DD
* Contact period start date must be less than, or equal to end date
* Rank may be supplied for contactpoints, Gaps in the sequence of rank are allowed, 1 is the highest rank, Rank 0 is invalid, When rank is not supplied it will be assigned the next lowest rank within the PracRole telecom contactpoints.


---


* _Create PractitionerRole - Contact errors_
  * _The contact point you are creating is a duplicate of another on this record_
  * _The mobile phone format is invalid_
  * _The email format is invalid_
  * _Contact period is invalid; format must be yyyy-mm-dd_
  * _Contact period start date must be less than or equal to a contact point period end date_ 
