

### Purpose of HPI and history
The purpose of the HPI is to uniquely identify health providers and issue a lifetime identifier for use in the NZ health systems.  The HPI was established in 2008 so that people working in the health sector could be identified using their HPI number, no matter what the context. This would reduce the number of identifiers in use for health providers and reduce the complexity of systems. The HPI number is increasingly being used as the identifier of choice by systems designers.  The HPI also recognises practitioners’ registration numbers and can be used to map from the registration number to the HPI number.  

The HPI also provides an authoritative source of registration details, scopes of practice and annual practicing certificate periods in a highly available national database. Health provider organisations can access the most up-to-date details about all practitioners from one place no matter what registration the practitioner has. 
The practitioner identity and registration information is supplied by each of the Responsible Authorities.

The current suppliers to the HPI and the frequency they supply register updates are:

* Chiropractic Board (monthly)
* Dental Council (weekly)
* Dietitians Board (monthly)
* Medical Sciences Council (weekly)
* Medical Council of New Zealand (weekly)
* Medical Radiation Technologists Board (weekly)
* Midwifery Council (weekly)
* Nursing Council of New Zealand (weekly)
* Optometrists & Dispensing Opticians Board (weekly)
* Osteopathic Council (monthly)
* Occupational Therapists Therapy Board (on request)
* Paramedic Council (weekly)
* Pharmacy Council of New Zealand (fortnighly)
* Physiotherapy Board (fortnightly)
* Podiatrists Board (monthly)
* Psychologists Board (weekly)
* Psychotherapists Board  (monthly)

The Health Information Privacy Code (Rule 13) restricts the assignment the HPI number (HPI Common Provider Number CPN) to practitioners as defined by section 5(1) of the Health Practitioners Competence Assurance Act 2003. This limits the issuing of HPI numbers to only practitioners registered with the authorities listed above.  Work is underway to address this restriction and allow the HPI to include all health providers and health workers so that a common identifier can be used to identify all the various individuals providing healthcare and supporting services.  

Practitioner has a special meaning in the New Zealand health system which is limited to those persons defined in the Health Practitioners Competence Assurance Act 2003. However, in this guide practitioner, health provider or person are terms used interchangeably and to include anyone directly or indirectly associated with providing healthcare services. 

A national directory of places where a practitioner works and how to contact them has been a gap in the HPI functionality and has meant that many systems create and maintain this information independently at significant cost.   The HPI Practitioner Role resource will allow organisations and practitioners to make these details available nationally so various systems can rely on it to know the locations a practitioner works and the organisation they work for.   

#### What the HPI contains
The HPI consists of 4 indexes or data sets (in FHIR they are represented as resources)
HPI Practitioner – holds identity and registration details for over 170,000 practitioners 
HPI Organization – holds identity and contact details of over 12,000 organizations providing healthcare
HPI Facility (Location resource) - holds identity, location and contact details of over 11,000 facilities or places where healthcare is provided. 
HPI PractitionerRole – holds the relationship details of practitioners to the places where they work and the organizations they work for, and the role they have there.  

 
<img style="width:500px; float:none" src="resources1.png"/>

#### Context
Responsible Authorities provide all the practitioner details in the HPI, most provide it on a weekly basis. The Ministry maintains the organisation and facility indexes based on requests from Ministry teams, ACC, PHOs and DHBs.   

The HPI is currently being used by DHBs, ACC, laboratories, ESR who receive extract files daily of the entire HPI.  Various other applications are using the existing SOAP APIs to access the HPI.
  
<img style="width:900px; float:none" src="context.png"/>


### Business Rules
#### Searching for Practitioners
Usually the practitioner’s HPI person number (CPN) or registration authority identifier (Medical council number, Nursing council number etc.) would be used to get the practitioner’s details. 
When an identifier is not known a search by demographics can be used. 
For practitioners the search criteria can be name, gender, date of birth and registration authority.
The HPI search uses a probabilistic search and returns results in order of their match score with the highest scoring result returned as the first in the bundle. The more search criteria provided, in as complete a form as is known, the more accurate the results returned will be.  It is better to enter the complete name even if spelling is not accurate, than entering just part of the name.

Results are scored on the following basis:
* A score is assigned to each record that represents how closely it matches the search parameters
* Each search parameter (e.g., Surname, year of birth, month of birth etc) is assigned a score, and weighted for importance. The sum of the individual scores makes up the overall score.
* The weightings vary based on a tuning process, with names weighted approximately twice as highly as a date of birth. 
Other notes on searches:
* All names including active and inactive names (names that have previously been used) are considered by the search.
* Phonetic similarities are considered (spellings and variations that sound the same).
* The search ignores differences between upper and lower case, punctuation, diacritics and dashes.
* The popularity of a name will impact the score e.g., a match on Jack will score lower than a match on Edwin because there are more people in the index named Jack than Edwin. 
* When names are in the same order as the search criteria, they will score slightly better than when the order is different e.g. Jane Mary Smith vs. Mary Jane Smith
* Names with similar spelling are considered for scoring. Minor spelling mistakes are catered for. E.g. If Sasha is being searched for then Sahsa would get some score and so would Sarah but Raewyn would not.
[See also](/searchPractitioner.html). 

#### Searching for Organizations 
If the organization’s New Zealand Business Number (NZBN) or the HPI OrgID is not known, a search by organization name can be used.  The organisation search by name uses the HPI probabilistic search in much the same way as person name but tuned to the characteristics of organization names. E.g. ‘Limited’ or ‘Ltd’ would be a low value token for scoring.  
Search using a type ahead style will be considered for a future release.
[See also](/searchOrganization.html).

#### Searching for Facilities 
If a facility’s HPI FacID is not known, a search by facility name, facility type, address and DHB can be used.  The facility search uses the HPI probabilistic search in much the same way as practitioner search by demographics but is tuned to the characteristics of facility attributes. The facility type and DHB cannot be used in a filtering way. These features and a type ahead style search will be considered for a future release [See also](/searchLocation.html).
 
#### Searching PractitionerRole
The PractitionerRole identifier can be used to retrieve a particular PractitionerRole record. 
Each PractitionerRole record represents one role a person has at a location and for an organization. When a person works at more than one location or has more than one role within an organization, they will have a PractitionerRole record for each role at each location. 
The HPI Person Identifier (CPN) is mandatory for all PractitionerRole searches. The HPI does not allow systems to search by FacID only to return all the practitioners at a location. The HPI FacID, HPI OrgID and role code can be used to filter the search results for a particular person. The active attribute should be used to filter out practitioner roles that have ended [See also](/searchPracRole.html).

#### Creating a PractitionerRole
A practitionerRole cannot be created if it duplicates or overlaps an existing record. 
A practitionerRole record is a duplicate of another if they both have the same 
CPN AND
OrganisationID AND
FacilityID AND
RoleCode AND
a period that overlaps 
unless that practitionerRole record has a statusReason = entered in error or duplicate.
Two periods are not overlapping if one starts on the same day the other ends.

A practitionerRole without a period is acceptable. It is assumed to exist indefinitely into the past and future
[See also](/addPracRole.html).

#### Updating PractitionerRole
The CPN, Facility, Organisation, RoleCode cannot be changed on an existing pracRole record. The existing records must be ended and a new PracRole record created with the new details. Even if the original PracRole record only has CPN and Facility and the intention is to add the Organisation and/or RoleCode, the existing record must first be updated with an end date and then a new PracRole record created with the CPN, Facility, Organisation and RoleCode provided.  
Only the Telecom contact points, the period and the statusReason can be updated on an existing pracRole record.

The PractitionerRole.period start and end dates can be replaced with any other period dates as long as the duplicate PractitionerRole rule is not broken.  
A practitionerRole record cannot be deleted. If a PractitionerRole record is entered incorrectly or by mistake, the way to logically delete it is to add a period end.date with an "Entered in Error" statusReason. PractitionerRole records with an enddate and statusReason = 'Duplicate' are also treated as logically deleted.  All records irrespective of their statusReason are part of the person's PracRole history [See also](/updatePracRole.html).

#### Linking - Live and Dormant Identifiers
A person may have been registered on the HPI more than once and therefore have been assigned more than one HPI CPN number. When this is discovered the records are ‘linked’.  Linking means that two or more HPI CPN numbers will always be associated with a single person. One number is nominated as the LIVE number.  The other numbers are referred to as DORMANT.  Usually, the earliest issued HPI CPN number is designated as the live number. All relevant information from both records is retained e.g. all names. After linking, a request using either the live or a dormant HPI number will return the same response [See also](/general.html#merging-resource-and-dormant-identifiers).

#### Confidentiality
A person can make a request to their council to make their record confidential.  When this is the case the person’s name, gender, birth date, languages and ethnicity will not be returned in any search or read response. Identifiers and registration details are returned when the confidentiality flag is set so that if the HPI is being used to authorise a person’s access to records or functionality, the person’s ability to do their job is not impeded. The confidentiality flag can also be set on a one or more of a person’s PractitionerRole records. The records are returned but the location and organization details are redacted [See also](/StructureDefinition-HPIPractitioner.html#redacted-practitioner-details)

If your system uses the practitioners name from the HPI to populate your local information and a user selects a practitioner record that has the name redacted then your system should present this message to the user “Te Whatu Ora has restricted access to some details of this practitioner. Please enter their name manually”.  Your user should have some documentation like a script, an order form or a request that contains the name which is the consent for you to record the name in your system. 

#### Case
Information in the HPI is collected in mixed case and preserved in the format provided by the source.


#### Māori macrons

Māori macrons are not currently supported by the HIP FHIR service.

This is due to the effect macrons would have on downstream systems and update conflicts that would occur between the HL7 legacy, SOAP and FHIR services.

Future development will allow updates to the HPI using the FHIR interfaces to include UTF-8 encoded Maori accented characters. This is dependent on the source systems supplying these.

### Implementation requirements and on-boarding
All consumers of the HPI are subject to the Privacy Act 1993 and the Health Information Privacy Code 2020. Privacy impact assessments and security assessments should be completed prior to applying for access to the HPI. An access agreement with user organisations will be signed before access is granted to production services [See also](/OnboardingAndComplianceTesting.html) 
