

### Create Practitioner

#### Overview

A Create Practitioner operation is initiated by a user who needs to add a new practitioner record to the HPI.

**Expectations**

* Prior to creating a new practitioner record an authorised user must complete a thorough [search of the HPI](/searchPractitioner.html) to ensure the person does not already exist.
* Duplicate HPI records will not be checked upfront, but will create a task for a potential duplicate to be resolved.
* If the person is found in the HPI then an update operation is required. If not found then a create practitioner operation should be completed.

<div>
{% include create-practitioner.svg %}
</div>

Create Practitioner processing steps:

1. The user initiates creating a new Practitioner in the integrating application
2. The integrating application sends an HTTP POST request (a FHIR create) containing the Practitioner details E.g. Post\<Endpoint>/Practitioner
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. A Practitioner record is created and a Practitioner ID issued (hpi-person-id)
5. The HPI FHIR API confirms a Practitioner record has been created – HTTP 201 Created status code
6. The integrating application indicates to the user the record has been successfully created
7. The integrating application retains the hpi-person-id and version-id for future requests relating to this record

### Create Practitioner Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Create Practitioner rules**
  * A Create practitioner request must include:
    * name,
    * birth date,
    * gender
    * ethnicity
   * A request made by an RA must include a unique RA source person identifier that does not already exist in HPI within the same source as that submitted
   * A request cannot create an HPI record which is a duplicate of another Practitioner record
   * A request may include:
      * educational qualifications
      * languages (communication) 
   * A request must not contain:
      * registration details (Practitioner.qualification). Registration details can only be added with an update request
      * deathdate. Deathdate can only be added with an update request


* _Create Practitioner errors_
  * _Name is required_
  * _Birth date is a required field_
  * _RA identifier is required_
  * _RA identifier is already assigned to an hpi-person-id_
  * _The practitioner identity information supplied may result in duplication of another identity. Please check the list of potential duplicates before resubmitting_
   * _Death date not valid with a create practitioner operation_
   * _Registration details not valid with a create practitioner operation_

---

* **Create Practitioner birth date rules**
  *	Practitioner birthdate must be a complete date and formatted YYYY-MM-DD
  *	Practitioner must be aged between 14 and 90


* _Create Practitioner birthdate errors_
  * _Birthdate not valid, must be a complete date and formatted YYYY-MM-DD_
  * _Practitioner birthdate cannot be a future date_
  * _Practitioner must be greater than 14, and les than 90 years old_

---

* **Create Practitioner name rules**
  * A person must have either a usual or an official name
  * A person can only have one official name
  * A person can only have one usual name
  * Name use is a mandatory field
  * A person cannot be added with a name use old
  * A name must have a given or a family at minimum
  * The first character of a name must be an Alpha (A-Z or a-z) or apostrophe

* _Create Practitioner name errors_
  * _A usual or an official name is required_
  * _Only one official or usual name is allowed_
  * _Name use old is not valid with a create practitioner operation_
  * _Name must contain either a Given name or a Family and a Name Use_

---

* **Create Practitioner ethnicity rules**
  * A set of ethnicity codes must contain at least 1 ethnicity, only one instance of each selected ethnicity, no more than one ‘unspecified’ ethnicity code and can contain up to 6 ethnicities

* _Create Practitioner ethnicity errors_
  * _A Practitioner must have at least one valid ethnicity code, only one instance of each selected ethnicity, and no more than one ‘unspecified’ ethnicity code_

---

* **Create Practitioner educational qualification rules**
  * An educational qualification request must not contain an id (this will be generated by the HPI and should be stored by the local system for later use)
  * An educational qualification request must include:
    * fullname,
    * year,
    * institution,
    * city,
    * country

* _Create Practitioner educational qualification errors_
  * _Educational qualification fullname is a required field_
  * _Educational qualification year is a required field_
  * _Educational qualification institution is a required field_
  * _Educational qualification city is a required field_
  * _Educational qualification country is a required field_
  * _Educational qualification year must be formatted YYYY_

---

* **Create Practitioner language (communication) rules**
  * A set of communication codes must contain at least 1 language, only one instance of each selected language, and can contain up to 10 languages
