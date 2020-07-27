Instance:   practitioner3
InstanceOf: HpiPractitioner


/*
A Nurse practitioner. Has 2 qualification elements. One is the nursing degree, 
the second the registration where they are registered as a nurse, andcan prescribe medications in a Resthome,
 under the supervizion of a GP
*/

* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Nurse Practitioner</div>"
* text.status = #additional

//the current HPI. There are no dormant identifiers
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/ns/hpi-provider-id"
* identifier.value = "prac002"

//first dormant HPI
* identifier[1].use = #old
* identifier[1].system = "https://standards.digital.health.nz/ns/hpi-provider-id"
* identifier[1].value = "prac003"

//second dormant HPI
* identifier[2].use = #old
* identifier[2].system = "https://standards.digital.health.nz/ns/hpi-provider-id"
* identifier[2].value = "prac001"


//the persons name
* name.family = "Smith"
* name.given = "Joan"

* gender = #female
* birthDate = "1989-03-12"

//------------- first qualification ------------
//Diploma of Nursing
* qualification.code.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0360|2.7"
* qualification.code.coding.code = #BN
* qualification.code.coding.display = "Bachelor of Nursing"

//This is an active qualification
//* qualification.extension[registration-status-code].valueCodeableConcept.coding.code = #active

* qualification.extension[registration-status-code].extension[status].valueCodeableConcept.coding.code = #active
* qualification.extension[registration-status-code].extension[status].valueCodeableConcept.coding.system = $qualificationStatus //"https://standards.digital.health.nz/CodeSystem/practitioner-qualificationstatus"
* qualification.extension[registration-status-code].extension[period].valuePeriod.start = "2020-02-02"

// * qualification.extension[registration-status-code].valueCodeableConcept.coding.system = 
  //"https://standards.digital.health.nz/CodeSystem/practitioner-qualificationststus"

//issued by Unitec
* qualification.issuer.identifier.system = "https://standards.digital.health.nz/id/hpi-facility"
* qualification.issuer.identifier.value = "Unitec"

//when the degree was awarded
* qualification[1].period.start = "2006"

//------------- second qualification ------------
//registration as a Nurse in NZ, plus prescribing rights
//??? is there a separate code for nurse practitioner At the moment we are using the extension 'scope of practice' for this
* qualification[1].code.coding.system = "http://standards.digital.health.nz/CodeSystem/registration-types"
* qualification[1].code.coding.code = #NUR
* qualification[1].code.coding.display = "Nurse"

//period of registration. There's only a start date
* qualification[1].period.start = "2007"


//scope of practice as a Nurse Practitioner
* qualification[1].extension[scope-of-practice].extension[code].valueCodeableConcept.coding.code = #NPRAC
* qualification[1].extension[scope-of-practice].extension[code].valueCodeableConcept.coding.system = "http://standards.digital.health.nz/CodeSystem/scope-of-practice"
* qualification[1].extension[scope-of-practice].extension[code].valueCodeableConcept.coding.display = "Nurse Practitioner"
* qualification[1].extension[scope-of-practice].extension[period].valuePeriod.start = "2018-11-26"

//---------- additional authorization - ability to prescribe
* qualification[1].extension[additional-authorization].extension[code].valueCodeableConcept.coding.system 
   = "https://standards.digital.health.nz/CodeSystem/practitioner-additionalauth"
  * qualification[1].extension[additional-authorization].extension[code].valueCodeableConcept.coding.code 
   = #rx


//english speaker
* communication.coding.system = "http://tools.ietf.org/html/bcp47"
* communication.coding.code = #en-NZ
* communication.coding.display = "English (New Zealand)"

