Instance:   practitionerY
InstanceOf: HpiPractitioner

* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Supervised Psychologist</div>"
/*a DipN, 1986
Graduate diploma in psychology 2006
A doctorate in clinical psychology 2012
A registration of being a trainee clinical psychologist
A scope saying that registration is only under supervised training
*/
* text.status = #additional

//the current HPI. There are no dormant identifiers
* identifier.use = #official
* identifier.system = "https://standards.digital.health.nz/id/cpn"
* identifier.value = "prac-Y"

//the persons name
* name.family = "Welby"
* name.given = "Peter"
* name.given[1] = "John"

* gender = #female
* birthDate = "1989-03-12"

//------------- first qualification ------------
//Diploma of Nursing
* qualification[0].code.coding.system = "http://hl7.org.nz/fhir/CodeSystem/qualifications"
* qualification[0].code.coding.code = #DIPNurs
* qualification[0].code.coding.display = "Diploma of Nursing"

//period of qualification. There's only a start date
* qualification[0].period.start = "1993"


//------------- second qualification ------------
//Graduate Diploma of Psychology
* qualification[1].code.coding.system = "http://hl7.org.nz/fhir/CodeSystem/qualifications"
* qualification[1].code.coding.code = #DIPPsych
* qualification[1].code.coding.display = "Graduate Diploma of Psychology"

//period of qualification. There's only a start date
* qualification[1].period.start = "2006"

//------------- third qualification ------------
//Doctorate in Clinical Psychology
* qualification[2].code.coding.system = "http://hl7.org.nz/fhir/CodeSystem/qualifications"
* qualification[2].code.coding.code = #DOCPsych
* qualification[2].code.coding.display = "Doctorate in Clinical Psychology"

//period of qualification. There's only a start date
* qualification[2].period.start = "2102"

//------------- fourth qualification (actually a registration) ------------
//registration as a clinical psychologist
* qualification[3].code.coding.system = "http://hl7.org.nz/fhir/CodeSystem/qualifications"
* qualification[3].code.coding.code = #CLINPsych
* qualification[3].code.coding.display = "Trainee clinical psychologist"

//COP (Condition On Practice)
* qualification[3].extension[condition-on-practice].extension[description].valueString = "registration is only under supervised training"

//english speaker
* communication.coding.system = "http://tools.ietf.org/html/bcp47"
* communication.coding.code = #en-NZ
* communication.coding.display = "English (New Zealand)"

