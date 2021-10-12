Use Cases to be elaborated in the IG

### Type of implementer by Use case

1-3, 9, 11-17	Health sector applications that manage or record information about health practitioners – PMS systems, Lab systems, Radiology systems, Clinical workstations, Healthpoint, MOH applications like Death Documents and COVID Immunisations register
4-8	Registration Authority eg Medical Council, Midwifery Council application
10	Health sector organisation supplying place of work details for their practitioners eg GP Practice and community specialist clinics PMS systems, hospital systems

### Practitioner

#### 1.	Implementer has a CPN and wants to 

a.	check the identity details they have are correct and up-to-date
b.	check the registration and APC are current 

##### Solution

Read with id

#### 2.	Implementer has a registering authority identifier eg Medical Council number, Nursing Council number and wants to 

a.	check the identity details they have are correct and up-to-date
b.	get the CPN to use as their identifier for the practitioner
c.	check the registration and APC are current 

##### Solution


Search using identifier.system and identifier.value

#### 3.	Implementer has name and (possibly registering authority) and wants to

a.	Get the CPN to use as their identifier for the practitioner

##### Solution


Search using name, 


#### 4.	Implementer has name and date of birth and wants to

a.	Check if the person already has a CPN prior to adding the person to the HPI
b.	Get the CPN to use as their identifier for the practitioner

##### Solution


Search using name and birthdate

#### 5.	Implementer has a person who has applied to be registered with a registering authority. and wants to 

a.	Add the person to the HPI to get a CPN prior to completing the registration process

##### Solution


Search using name and birthdate
Create Practitioner 

#### 6.	Implementer has a person who has completed the registration process and has been issued an APC and wants to

a.	Add the person to the HPI if they are not already there
b.	Add/update all the registration, APC, qualification, demographics details for the person

##### Solution


Search using name and birthdate
Create Practitioner OR
Update Practitioner

#### 7.	Implementer has a person whose has a new scope of practice or their registration has been removed, suspended or made inactive or they have a new condition of their practice and wants to

a.	Update the person’s registration details 

##### Solution


Read with id
Update Practitioner

#### 8.	Implementer has a person who has renewed their Annual Practicing Certificate and wants to

a.	Update the person’s demographics 
b.	Add new APC period
c.	Add/update the persons set of PractitionerRole(s)(ie places of work)

##### Solution


Read with id
Update Practitioner
Search Location, search organisation
Create or update Practitioner Role

### PractitionerRole

#### 9.	Implementer has information to be delivered to a practitioner and wants to 

a.	check their place of work is current 
b.	find their Healthlink edi
c.	find their contact details (phone and email)

##### Solution


Search PractitionerRole with CPN
Include Location or Read Location with id

#### 10. Implementer has a person whose place of work details have changed and wants to 

a.	Create or Update one of the person’s PractitionerRole details 

##### Solution


Read PractitionerRole with id or
Search PractitionerRole with CPN
Update or Create PractitionerRole

### Location

#### 11.	Implementer has name and other details about a location and wants to

a.	Get the HPI Facility ID for the location

##### Solution


Search Location by name, type, address

#### 12.	Implementer has a Ministry legacy identifier for a facility and wants to

a.	Get the HPI Facility ID for the facility

##### Solution


Search Location by identifier using identifier.system

#### 13.	Implementer has a HPI Facility ID (eg from patient’s NES enrolment details) and wants to

a.	Check the details they have about the facility are correct
b.	Get the Health link edi or contact details for the facility

##### Solution


Read Location by id

#### 14.	Implementer has a HPI Facility ID and wants to

a.	Get the contact details of the managing Organisation

##### Solution


Read Location by id include managingOrganisation

#### 15.	Implementer wants to

a.	Find all the facilities of a particular type eg enrolling GP, within a particular DHB, in a particular city or suburb, 

##### Solution


Search Location using type, dhb, address

### Organisation

#### 16.	Implementer has a HPI Organisation ID and wants to

a.	Check the details they have about the organisation are correct
b.	Get the contact details for the organisation

##### Solution


Read Organization by id 

#### 17.	Implementer has details about an organisation and wants to

c.	Get the HPI Organization ID for the organization

##### Solution


Search Organization by name, partOf 
