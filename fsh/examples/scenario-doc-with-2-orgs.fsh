//scenario - a doctor working for 2 organizations
//line 1


Instance:   scen1-ghc
InstanceOf: HpiOrganization
* name = "Very Good Health Clinic"

Instance:   scen1-pharm1
InstanceOf: HpiOrganization
* name = "Pharmacists R Us"

Instance:   scen1-prac1
InstanceOf: HpiPractitioner
* name[0].text = "Dr John Kildaire"
* name.family = "Kildaire"
* gender = #male

Instance:   scen1-pr1
InstanceOf: HpiPractitionerRole
* text.div = "<div>Dr Kildaire as doctor</div>"
* text.status = #additional

* identifier[0].value = "sr"
* identifier[0].system = "http://clinfhir.com/example"

* organization = Reference(ghc)
* practitioner = Reference(scen1-prac1)

* code.coding.system = "http://hl7.org/fhir/practitioner-role"
* code.coding.code = #doctor

Instance:   scen1-pr2
InstanceOf: HpiPractitionerRole
* text.div = "<div>Dr Kildaire as pharmacist</div>"
* text.status = #additional

* organization = Reference(ghc)
* practitioner = Reference(scen1-prac1)
* code.coding.system = "http://hl7.org/fhir/practitioner-role"
* code.coding.code = #pharmacist