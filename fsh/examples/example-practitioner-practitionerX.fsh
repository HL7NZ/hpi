Instance:   practitionerX
InstanceOf: HpiPractitioner

* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Supervised Pharmacist</div>"
* text.status = #additional

/*has a BPHARM from 1993, unknown location
Has a registration with The pharmacy council starting 2003-01-01
Has a current practicing registration from 2019-02-02 -> 2020-02-02
That practicing registration has the requirement that they complete 120 hours supervised work and a legal and ethics interview*/

//the current HPI. There are no dormant identifiers
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/id/cpn"
* identifier.value = "prac-X"

//the persons name
* name.text = "Dr Multi RA Example"
* name.family = "Welby"
* name.given = "Joan"
* name.given[1] = "Margeret"

* gender = #female
* birthDate = "1989-03-12"

//Batchelor of Pharmacy
* qualification.code.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0360"
* qualification.code.coding[0].code = #BPHARMN
* qualification.code.coding[0].display = "Bachelor of Pharmacy"

//period of qualification. There's only a start date
* qualification.period.start = "1993"

//initial date
* qualification.extension[registration-initial-date].valueDate = "2003-01-01"

//COP: supervised work
* qualification.extension[condition-on-practice].extension[description].valueString = "complete 120 hours supervised work"

//COP: ethics review (note the [1] to create a new extension instance)
* qualification.extension[condition-on-practice][1].extension[description].valueString = "legal and ethics interview"

//The identifier in the qualification was issued by the pharmacy council
* qualification.issuer.identifier.system = "https://standards.digital.health.nz/id/hpi-organisation"
* qualification.issuer.identifier.value = "pharmacyCouncil"

//english speaker
* communication.coding.system = "http://tools.ietf.org/html/bcp47"
* communication.coding.code = #en-NZ
* communication.coding.display = "English (New Zealand)"

