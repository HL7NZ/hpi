
The Practitioner resource represents any provider of healthcare - not restricted to those with formal qualifications.

The current HPI contains practitioners covered by the Health Practitioners Competence Assurance Amendment Act 2019. This includes all:
* Chinese Medicine Practitioners,
* Chiropractors, 
* Dentists, 
* Dental hygienist and Dental and Oral health therapists, 
* Dietitians, 
* Medical Laboratory Scientist and Technicians including phlebotomists and mortuary technicians, 
* Anaesthetic Technologists, 
* Medical Radiation Technologists, 
* Medical Practitioners (all doctors and specialists), 
* Midwifes, 
* Nurses, 
* Occupational Therapists, 
* Optometrists and optical dispensers, 
* Osteopaths, 
* Paramedics, 
* Pharmacists, 
* Physiotherapists, 
* Podiatrists, and 
* Psychologists.

It is intended with the upgraded capabilities that other professional groups may supply their members eg Social Workers, Acupuncturists, Audiologists, Counsellors, Cardiac Physiologists, Nutritionist.

Other groups of health workers will need a CPN to be identified in digital records eg Allied Health assistants, Aged care, Personal Care and support workers, administrative staff, practice managers, students working in healthcare setting.

Consideration is being given to ‘self-asserted’ data.


### Key differences from spec

*   DeathDate extension
*   Ethnicity extension
*   Qualification has a status (see more differences below)
*   Initial date of registration extension
*   Additional Authorizations extension (complex)
*   Scope of Practice extension (complex)
*   Conditions on Practice extension (complex)


### Registration Authority (RA)

A registration authority is an organization that asserts the information about a practitioner’s competence to perform a particular health role.  This includes the Responsible Authorities named under the Act and Professional bodies who require a level of education and professional development to be registered as a member and be issued a certificate to practice.  - Information supplied by the Registration Authority can only be changed by the Registration Authority.  Health provider organisations may add their workers to the HPI with personal identity details ie name, date of birth, gender, ethnicity and the languages they speak in order to get a CPN. At a later stage a Responsible Authority or a Professional body may add information about their registration with that body ie Annual Practicing Certificate dates, scopes of practice etc. 


### Resource identifiers

There are 2 levels of identifier in the practitioner resource. 

_Practitioner.identifier_ is the top level identifier assigned by the HPI (and the source of the resource id as described in the background section). There can be multiple identifiers for any given resource as part of managing the Practitioner (for example removal of duplicate identifiers). The current identifier will have a _use_ value of ‘official’, others will have a _use_ value of ‘old’. The HPI identifier will always have a system value of '\https://standards.digital.health.nz/ns/hpi-person-id' It is the client's responsibility to check the value of the use element.

_Practitioner.qualification.identifier_ is the identifier assigned by the Registration authority - for example the Medical Council Number, or Nursing Council number. This will also be found under the _Practitioner.identifier_ but with a system value related to the Registration authority who issued it, for nursing council this will be 'https://standards.digital.health.nz/ns/nursing-council-id'. 


### Qualifications

To practice in NZ, practitioners must gain registration with a Responsible Authority (RA). The RA ensures practitioners are competent and fit to practice. 
Practitioners may provide evidence of educational qualifications attained that are considered by the RA when granting registrations, however the educational qualifications alone do not give a practitioner the right to practice in NZ.

In order to clearly distinguish a person’s licence to practice and their educational qualifications the HpiPractitioner profile uses the Practitioner.qualification element to represent the practitioner’s registration and the extension Practitioner.educational.qualification element to represent a person’s educational qualifications.

Other health providers (not considered Practitioners in NZ) are recorded in the HPI. They may not have a registration but will supply educational qualifications as part of their profile.  In the HPI educational qualifications are an element of practitioner not a sub element of practitioner.qualification (ie registration).

<h3>A registration is made up of</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Element</th>
<th>Description</th>
<th>Profile element</th>
</tr>

<tr>
<td>Type</td>
<td>the type of registration – nurse, physiotherapist, doctor etc.</td>
<td>Practitioner.qualification.code</td>
</tr>

<tr>
<td>Identifier</td>
<td>an identifier issued by the responsible authority eg medical council number</td>
<td>Practitioner.qualification.identifier</td>
</tr>

<tr>
<td>Status</td>
<td>indicates whether the registration is current</td>
<td>Practitioner.qualification.extension:registration-status-code</td>
</tr>

<tr>
<td>Initial registration date</td>
<td>date the practitioner was first registered with the responsible authority</td>
<td>Practitioner.qualification.extension:registration-initial-date</td>
</tr>

<tr>
<td>Annual practicing certificate</td>
<td>the period of the most recently issued APC</td>
<td>Practitioner.qualification.period</td>
</tr>

<tr>
<td>Issuer</td>
<td>HPI Identifier of the responsible authority</td>
<td>Practitioner.qualification.issuer</td>
</tr>

<tr>
<td>Scope of practice</td>
<td>range of health services a practitioner is authorised to perform</td>
<td>Practitioner.qualification.extension:scope-of-practice</td>
</tr>

<tr>
<td>Condition on practice</td>
<td>conditions the health practitioner is subject to in relation to their scope of practice</td>
<td>Practitioner.qualification.extension:condition-on-practice</td>
</tr>

<tr>
<td>Additional Authorisation</td>
<td>additional services that a practitioner is authorised to perform</td>
<td>Practitioner.qualification.extension:additional-authorisation</td>
</tr>
</table>

<h3>An education qualification is made up of</h3>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Element</th>
<th>Profile element</th>
</tr>

<tr>
<td>Fullname</td>
<td>Practitioner.extension:educational-qualification.extension:fullname</td>
</tr>

<tr>
<td>Shortname</td>
<td>Practitioner.extension:educational-qualification.extension:shortname</td>
</tr>

<tr>
<td>Year</td>
<td>Practitioner.extension:educational-qualification.extension:year</td>
</tr>

<tr>
<td>Institution</td>
<td>Practitioner.extension:educational-qualification.extension:institution</td>
</tr>

<tr>
<td>City</td>
<td>Practitioner.extension:educational-qualification.extension:city</td>
</tr>

<tr>
<td>Country</td>
<td>Practitioner.extension:educational-qualification.extension:country</td>
</tr>
</table>

### Redacted Practitioner details

A person can make a request to their council to make their record confidential. When this is the case the person’s name and other personal details will not be returned in any search or get response. Identifiers and registration details are returned. [See Confidentiality](/businessView.html#confidentiality).

A practitioner’s Date of birth, Gender and Ethnicity are supplied when a practitioner is added and maintained by their Responsible Authority, but they are withheld on a Get Practitioner response.  Admin permissions are required to get all the practitioner details in a response.

The Practitioner resources will contain a security element of "REDACTED" in the meta data when data items within the practitioner resource have been withheld.  

<h4>HPI Practitioner security labels</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Confidentiality level</th>
<th>Code</th>
<th>HPI Use</th>
<th>Information that is redacted with a read scope</th>
</tr>

<tr>
<td>Low</td>
<td>L</td>
<td>All Registered Practitioner records with no confidentiality flag set</td>
<td>Gender, birthDate and ethnicity</td>
</tr>

<tr>
<td>Moderate</td>
<td>M</td>
<td>All Non-registered Practitioner records with no confidentiality flag set</td>
<td>Gender, birthDate and ethnicity</td>
</tr>

<tr>
<td>Restricted and, <br /> Redacted </td>
<td>R, and <br /> REDACTED</td>
<td>All Practitioner records with confidentiality set (Registered and Non-registered Practitioners)</td>
<td>Name Official <br />
Name Usual <br />
Name(s) Old <br />
Gender <br />
Date of Birth <br />
Date of death <br />
Language(s) <br />
Ethnicity <br />
ConditionOnPractice (Applies to Registered Practitioner only)</td>
</tr>
</table>

#### Example of Practitioner with confidentiality flag set

```
{
    "resourceType": "Practitioner",
    "id": "90ZZLP",
    "meta": {
        "versionId": "9971",
        "lastUpdated": "2022-04-07T09:12:26.000+12:00",
        "profile": [
            "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitioner"
        ],
        "security": [
            {
                "system": "http://terminology.hl7.org/CodeSystem/v3-ObservationValue",
                "code": "REDACTED"
            },
            {
                "system": "http://terminology.hl7.org/CodeSystem/v3-Confidentiality",
                "code": "R"
            }
        ]
…
}
```
