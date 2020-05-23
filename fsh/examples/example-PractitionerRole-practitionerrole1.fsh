Instance:   practitionerrole1
InstanceOf: HpiPractitionerRole

/*
Represents Dr Multi working for the Good Health Medical centre (Organization1) at
Dr Dobbs surgery (Location1) as a psychiatrist. Role was created by Dr Multi.
*/

* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Dr multi as a psychiatrist for the Good Health Centre</div>"
* text.status = #additional

//practitioner is drmulti
* practitioner = Reference(drmulti)

//organization is organization1
* organization = Reference(organization1)

//location is dr dobbs surgery (location1)
* location = Reference(location1)

//created by dr multi at organization1
* extension[practitionerRole-creator].extension[person].valueReference = Reference(drmulti)
* extension[practitionerRole-creator].extension[organization].valueReference = Reference(organization1)