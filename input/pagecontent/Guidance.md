

### Practitioner resource use cases


#### An authorised user wants to lookup a practitioner’s details on the HPI
* Scenarios:
  * A new practitioner starts at an organization and their HPI identity details and practicing credentials are checked.
  * A practitioner is onboarded onto a healthcare application
  * A practitioner’s details have been updated on the HPI (Updated practicing certificate)
  * A user wants to validate a practitioner’s details that are on a referral
  * A pharmacist wants to validate if a prescriber is authorised to prescribe

* Options available:
  * Steps involved hpi-person-id known
    *  User supplies the hpi-person-id to be looked up
    *  Integrating application looks up the HPI for the practitioner [Get Practitioner](/getPractitioner.html)
    *  Integrating application presents HPI practitioner details to user

  * Steps involved ‘Other’ identifier is known
    * User supplies the registration type (e.g. Medical Council) and the 'other identifier' (e.g. Medical council number)
    * Integrating application looks up the HPI for the practitioner [Search Practitioner](/searchPractitioner.html#query-practitioner-with-another-identifier)
    * Integrating application presents HPI practitioner details to user

  * Steps involved if name and other search parameters known
    * User supplies the name and any [additional search parameters](/capabilityStatement.html#practitioner)
    * Integrating application searches the HPI for the practitioner [Search Practitioner](/searchPractitioner.html#search-practitioner)
    * HPI matches the search criteria against HPI records and returns a bundle of HPI practitioner records that meet the match threshold
    * Integrating application presents the bundle of HPI practitioner records that are returned
    * User can select the appropriate practitioner record to view


#### An authorised user wants to add a practitioner to the HPI
* Scenarios:
  * An RA wants to add a new health provider to the HPI
  * Health provider organisation wants to add a new employee to the HPI

* Steps involved for an RA adding a new practitioner to the HPI:
  * The user searches the HPI for the health provider [Search Practitioner](/searchPractitioner.html)
  * If a practitioner resource is found, then an update of that practitioner resource is required *(Update method TBC)*
  * If not found, the user provides the details to be added to the HPI:
    * Name, birthdate, gender and ethnicity (mandatory)
    * An RA must include an RA identifier
    * Language and educational qualification (optional)
    * Death date and registration details (Practitioner.qualification) provided subsequently with an update operation
  * The integrating application adds a practitioner to the HPI [Add practitioner](/addPractitioner.html)
  * The HPI confirms a successful Add and returns the hpi-person-id and a version-id to be stored by the local system for future use
  * *If the user wants to provide registration details (qualification) or a death date, the integrating application does an update to the practitioner record created (Update method TBC)*

* Steps involved for a Health Provider adding a new employee (NR) record to the HPI:
  * *Note: When adding an NR record to the HPI, best practice requires a PractitionerRole to be created for that record*
  * The user searches the HPI for the employee [Search Practitioner](/searchPractitioner.html)
  * If a practitioner resource is found, then an update of that practitioner resource is required *(Update method TBC)*
  * If not found, the user provides the employee details to be added to the HPI:
    * Name, birthdate, gender and ethnicity (mandatory)
    * Language and educational qualification (optional)
  * The integrating application adds a practitioner to the HPI [Add practitioner](/addPractitioner.html)
  * The HPI confirms a successful Add and returns the hpi-person-id and a version-id to be stored by the local system for future use
  * The user then supplies the details to [Add a PratitionerRole record](/addPracRole.html)


#### An authorised user wants to update information for a practitioner on the HPI
* Scenarios:
  * An RA or health provider organisation wants to update a provider or employee’s details
  * An RA wants to add a registration (Practitioner.qualification) after a practitioner has been created, or update registration details (qualification)

* The operations have been broken down into four custom updates:
  * Core
    * Name
    * Birthdate
    * Deathdate
  * Personal
    * Gender
    * Ethnicity
    * Languages (Communication)
  * Educational qualifications
  * Registration details (Practitioner.qualification)

* Steps involved for updating a practitioner record:
  * User selects from local record the person to be updated and enters the updated details
  * Integrating application finds the hpi-person-id and version-id from the local record
  * Integrating application provides the HPI with the details to be updated and calls the correct update operation *(Update method TBC)*
  * The HPI uses the hpi-person-id (and RA identifier RA record only) to update the correct record on the HPI
  * The HPI returns a new version-id to be saved locally



### Organisation resource use cases


#### An authorised user wants to view an organizations details on the HPI
* Scenarios:
  * A user wants to find the hpi-organisation-id to record an identifier in the local system for an organisation
  * A user wants to find the contact details for an organisation
  * A user wants to know the facilities managed by an organisation
  * A user wants to know all the organisations of a particular type (e.g. Maori providers)
  * A user wants to find all the sub organisations that are part of an organisation

* Three options available:
  * Steps involved if hpi-organization-id known:
    * The user supplies an hpi-organization-id for the organization to be looked up
    * The integrating application looks up the HPI organization resource [Get organization](/getOrganization.html) 
    * The integrating application displays the organization record with all HPI information for that organization

  * Steps involved if hpi-nzbn (New Zealand Business Number) known:
    * The user identifies the system (NZBN) and number
    * The integrating application searches the HPI organization resource [Search organization](/searchOrganization.html#other-search-criteria).
    * The integrating application returns a bundle with a single record for the organisation

  * Steps involved if an organisation name or other search parameters are known:
    * The user supplies search parameters for the organisation e.g name [click here for more search parameters](/capabilityStatement.html#organization)
    * The integrating application searches the HPI organization resource [Search organization](/searchOrganization.html#search-organization-by-name)
    * The HPI uses the search parameters and returns a bundle of HPI organization records that meet the search threshold
    * The integrating application presents the bundle of HPI organization records that are returned
    * The user can select the appropriate organization record to view



### Facility (Location) resource use cases


#### An authorised user wants to view a facilities details on the HPI
* Scenarios:
  * User wants to find the hpi-facility-id to record an identifier in the local system for a facility
  * User wants to find the contact details, EDI, address etc. for a facility
  * User wants to search for all facilities by managing organisation
  * User wants to find all facilities of a particular type
  * User wants to know what facilities of a particular type are within a particular DHB
  * User wants to know what facilities of a particular type are nearby (Not yet implemented)

* Steps involved if hpi-facility-id known:
  * The user supplies an hpi-facility-id for the facility to be looked up
  * The integrating application looks up the HPI location resource [Get location](/getLocation.html) 
  * The integrating application displays the location record with all HPI information for the facility

* Steps involved if other search parameters are known:
  * The user supplies search parameters for the facility e.g name, address [click here for more search parameters](/capabilityStatement.html#location)
  * The integrating application searches the HPI location resource [Search location](/searchLocation.html) 
  * The HPI uses the search parameters and returns a bundle of HPI location records that meet the search threshold
  * The integrating application presents the bundle of HPI location records that are returned
  * The user can select the appropriate facility to view



### Practitioner Role resource use cases


#### An authorised user wants to find a PractitionerRole record
* Scenarios:
  * A user wants to find the organisations or facilities that a person works for
  * A user wants to see if a person works for a particular organisation or facility

* Steps involved to view a PractitionerRole record for a known hpi-practitionerole-id:
  * The user supplies the hpi-practitionerrole-id to be looked up
  * The integrating application does a read of the PractitionerRole records [Get PractitionerRole](/getPracRole.html)
  * The integrating application returns and displays the PractitionerRole record associated with that identifier

* Steps involved to retrieve all the PractitionerRole records for a Practitioner:
  * The user provides an hpi-person-id and any [other search parameters](/capabilityStatement.html#practitionerrole) 
  * The Integrating application does a search of the PractitionerRole records associated with that Practitioner [Search PractitionerRole](/searchPracRole.html#search-practitionerrole-by-practitioner-hpi-person-id)
  * The Integrating application returns a bundle of PractitionerRole records
  * The user can select the appropriate PractitionerRole record to view


#### An authorised user wants to add a new PractitionerRole record
* Scenarios:
  * A person starts a new job
  * An existing employee changes their role

* Steps involved:
  * The user provides:
    * The hpi-person-id and an hpi-facility-id and/or hpi-organisation-id
    * Optional: Contact point, the role code, period (start date and end if applicable)
  * The integrating application adds a PractitionerRole to the HPI [Add PractitionerRole](/addPracRole.html)
  * The HPI confirms a successful add and returns the hpi-practitionerrole-id and a version-id to be stored by the local system for future use


#### An authorised user wants to update a PractitionerRole record
* Scenario
  * An authorised user wants to update an employee’s contact details or change the end date of a practitioner role record
  * *Note: No other updates are currently allowed*

* Steps involved:
  * The user views a record and decides that an update is required
  * The user provides the updated contact point or end date
  * The system provides the hpi-practitionerrole-id and version-id
  * The integrating application updates the PractitionerRole [Update PractitionerRole](/updatePracRole.html)
  * The HPI returns the updated version-id to be saved locally
  


### Multi-resource Use cases


#### Lookup EDI for an enrolled patient’s General Practice - using NHI FHIR API

* This use case requires permission to access the NHI, NES enrollment's and HPI facility information.

<div>
{% include lookup-edi-number-NHI.svg %}
</div>


* Steps involved:
  1.	The user initiates searching for an EDI number for a patient’s General Practitioner
  2.	The integrating application sends a read request for the Patient Resource using the nhi-id to the NHI FHIR API E.g. GET\<Endpoint>/Patient/ZZZ0008
  3.	The requested is validated - ALT: Validation failure. OperationOutcome resource returned
  4.	The Patient resource (containing the Patients enrolled General Practice details) is returned from the HPI
  5.	The integrating application sends a read request for the Facility details (Location resource) using the hpi-facility-id to the HPI FHIR API E.g. GET\<Endpoint>/Location/F99999B
  6.	The requested is validated - ALT: Validation failure. OperationOutcome resource returned
  7.	The Location resource is returned from the HPI
  8.	The integrating application extracts the messaging address containing the EDI number for the GP clinic


#### Lookup EDI for an enrolled patient’s General Practice - using NES SOAP

* This use case requires permission to access the NHI, NES enrollment's and HPI facility information.

<div>
{% include lookup-edi-number-NES.svg %}
</div>


* Steps involved:
1.	The user initiates searching for an EDI number for a patient’s General Practitioner 
2.	The integrating application calls the SOAP Enrolment service with the patient’s NHI number.
3.	The SOAP Enrolment web service returns the enrolment for a patient containing the OrgID, FacID, and GP’s CPN. 
4.	The integrating application sends a read request for the Facility (location resource) using the FacID to the HPI FHIR API. 
E.g. GET https://hpi.api.health.govt.nz/location/\F99999B
5.	The requested is validated - ALT: Validation failure. OperationOutcome resource returned
6.	The location resource is returned from the HPI. 
7.	The integrating application extracts the messaging address containing the EDI number 

