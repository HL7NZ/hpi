

### Add Practitioner

#### Add new Practitioner 

Diagram TBC

#### Add new Practitioner processing steps:

1. The user initiates creating a new Practitioner in the integrating application
2. The integrating application sends an HTTP POST request (a FHIR create) containing the Practitioner details
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. A Practitioner record is created and a Practitioner ID issued (HPI Person-ID)
5. The HPI FHIR API confirms a successful update – HTTP 200
6. The integrating application indicates to the user the create has been successful
7. The integrating application retains the Practitioner ID for subsequent update requests

#### Rules and errors

[For Request rules and errors click here](/general.html)

1. **Add Practitioner rules**
 * An Add practitioner request must include:
  * name,
  * birth date,
  * gender
  * ethnicity
 * An add practitioner request made by an RA must include an RA identifier
 * A request cannot create an HPI record which is a duplicate of another Practitioner record
 * An add request cannot contain an RA identifier that already exists in the HPI
 * An add request can include
  * educational qualifications
  * languages 
 * An add request must not contain 
  * registration details (registration details can only be added with an update request)
  * death date

      _1a. Add Practitioner errors_
      * _Name is required_
      * _Birth date is a required field_
      * _RA identifier is required_
      * _RA identifier is already assigned to CPN XXXXX_
      * _The practitioner identity information supplied may result in duplication of another identity. Please check the list of potential duplicates before resubmitting_
      * _Death date not valid for an add_
      * _Registration details not valid for an add_

---

2. **Add birth date rules**
 * A practitioner must have a birthdate that is after 1 January 1800 and not in the future
 * Birthdate must be a complete date and formatted YYYY-MM-DD
 * Practitioner must be greater than 10 years old

      _2a. Add birthdate errors_
      * _Practitioner birthdate cannot be a future date_
      * _Birthdate not valid, must be a complete date and formatted YYYY-MM-DD_
      * Practitioner must be greater than 10 years old_

---

3. **Add name rules**
* A person must have either a usual or an official name
* A person can only have one official name
* A person can only have one usual name
* Name use is a mandatory field
* A person cannot be added with a name use old
* A name must have a given or a family at minimum
* A given name is required when ‘other given names’ are present
* A name can only include these characters **TBC**
* The first character of a name must be an Alpha (A-Z or a-z) or apostrophe.

      _3a. Add name errors_
      * _A usual or an official name is required_
      * _Only one official or usual name is allowed_
      * _Name use old is not valid for an add_
      * _Name must contain either a Given name or a Family and a Name Use_
      * _Given name is required when Other Given Names are present_
      * _Name contains invalid text_

---

4. **Add ethnicity rules**
* A set of ethnicity codes must contain at least 1 ethnicity and can contain up to 6 ethnicities

      _4a. Add ethnicity errors_
      * _A Practitioner must have at least one valid ethnicity code, only one instance of each selected ethnicity, and no more than one ‘unspecified’ ethnicity code_

---

5. **Add educational qualification rules**
* An educational qualification add request must not contain an Id
* An educational qualification add request must include
 * fullname,
 * year,
 * institution,
 * city,
 * country
* An educational qualification can only include these characters **TBC**

      _5a. Add educational qualification errors_
      * _Educational qualification fullname is a required field_
      * _Educational qualification year is a required field_
      * _Educational qualification institution is a required field_
      * _Educational qualification city is a required field_
      * _Educational qualification country is a required field_
      * _Educational qualification year must be formatted YYYY_
      * _Educational qualification contains invalid text_

---

6. **Add language (communication) rules**
* TBC

      _6a. Add  language (communication) errors_
      * _TBC_
