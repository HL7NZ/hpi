Alias: $qualificationStatus = https://standards.digital.health.nz/ns/practitioner-qualificationstatus

Instance:   drmulti
InstanceOf: HpiPractitioner


* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'> Dr Multi</div>"
* text.status = #additional

//the current HPI
* identifier[0].use = #official
* identifier[0].system = "https://standards.digital.health.nz/ns/hpi-provider-id"
* identifier[0].value = "98ZZA"

//a dormant HPI
* identifier[1].use = #old
* identifier[1].system = "https://standards.digital.health.nz/ns/hpi-provider-id"
* identifier[1].value = "98ZZB"

//the persons name
* name.text = "Dr Multi RA Example"
* name.family = "Multi"
* name.given = "Frank"

* gender = #male
* birthDate = "1970-07-20"

//This qualification is actually thought of as a 'registration' by the HPI, but still recorded in the 'qualification' element...
//There's a single qualification, so no indexer ([]) is needed...
//NZMC number
* qualification.identifier.use = #official
* qualification.identifier.system = "https://standards.digital.health.nz/ns/nzmc-registration-authid"
* qualification.identifier.value = "123456"

//Is a qualified doctor
* qualification.code.coding.system = "http://standards.digital.health.nz/ns/registration-types"
* qualification.code.coding.code = #MD
* qualification.code.coding.display = "Medical doctor"

//period of qualification
* qualification.period.start = "2019-03-01"
* qualification.period.end = "2019-11-30"

//issuer. This uses the HPI identifier for the NZMC as the reference type rather than a 'real' FHIR reference
* qualification.issuer.identifier.system = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* qualification.issuer.identifier.value = "nzmc"

//The initial date for this registration
* qualification.extension[registration-initial-date].valueDate = "2018-11-26"


//This is an active qualification
* qualification.extension[registration-status].extension[status].valueCodeableConcept.coding.code = #active
* qualification.extension[registration-status].extension[status].valueCodeableConcept.coding.system = $qualificationStatus 
* qualification.extension[registration-status].extension[period].valuePeriod.start = "2020-02-02"


//there is a condition on practice
* qualification.extension[condition-on-practice].extension[description].valueString = "Dr Example  is permitted to practise medicine in the position of House Officer in accredited clinical attachments at Southern District Health Board under the supervision of an approved prevocational educational supervisor between 01 March 2019 and 30 November 2019. The purpose of this registration is to require doctors to meet Council requirements for registration in the general scope of practice."
* qualification.extension[condition-on-practice].extension[period].valuePeriod.start = "2018-11-26"
* qualification.extension[condition-on-practice].extension[period].valuePeriod.end = "2019-03-01"

//Scope of practice is MCPG
* qualification.extension[scope-of-practice].extension[code].valueCodeableConcept.coding[0].code = #MCPG
* qualification.extension[scope-of-practice].extension[code].valueCodeableConcept.coding[0].system = "https://standards.digital.health.nz/ns/practitioner-scope-of-practice"
* qualification.extension[scope-of-practice].extension[period].valuePeriod.start = "2018-11-26"


