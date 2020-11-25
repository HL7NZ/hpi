
The Practitioner resource represents any provider of healthcare - not restricted to those with formal qualifications. 

The current HPI contains practitioners covered by the Health Practitioners Competence Assurance Amendment Act 2019. This includes all  Dentists, Dental hygienist and Dental and Oral health therapist, Dietitians, Medical Laboratory Scientist and Technicians including phlebotomists and mortuary technicians, Anaesthetic Technologists, Medical Radiation Technologists, Medical Practitioners (all doctors and specialists), Midwifes, Nurses,	Occupational Therapists, Optometrists and optical dispensers, Pharmacists, Physiotherapists, Psychologists,	Psychotherapists. 	

Chiropractors, Podiatrist and Osteopaths also covered by the Act are working towards supplying their members data to the HPI also.

It is intended with the upgraded capabilities that other professional groups will also supply their members also eg Social Workers, Acupuncturists, Audiologists, Counsellors, Cardiac Physiologists, paramedics, Nutritionist.

Other groups of health workers will need a CPN to be identified in digital records eg Allied Health assistants, Aged care, Personal Care and support workers, administrative staff, practice managers, students working in healthcare setting,

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

_Practitioner.identifier_ is the top level identifier assigned by the HPI (and the source of the resource id as described in the background section). There can be multiple identifiers for any given resource as part of managing the Practitioner (for example removal of duplicate identifiers). The current identifier will have a _use_ value of ‘official’, others will have a _use_ value of ‘old’. It is the client's responsibility to check the value of the use element.

_Practitioner.qualification.identifier_ is the identifier assigned by the Registration authority - for example the Medical Council Number, or Nursing Council number.


### Practitioner Qualifications

The Practitioner resource has a single qualification element that holds 2 distinct categories of information from the perspective of the HPI.



*   _Qualifications_ are regarded as recognition of a particular academic achievement. For example a medical or nursing degree
*   _Registrations_ are statements of ‘fitness to practice’ in New Zealand, and are conferred by the Registration authority. Generally - though not always - there is a degree as well, though it is at the discretion of the Registration Authority that fitness to practice is stated.

After some discussion, it was decided that only ‘registration’ information is to be included in the Practitioner resource to avoid confusion. This can be revisited if needed.

There are 2 elements within the qualification element that are related to the Registration Authority.



*   _qualification.issuer_ is a reference to the Organization resource that represents the asserter
*   _qualification.identifier.system_  is a url that represents the namespace of the Registration Authority
