Instance: hpiProvider
InstanceOf: NamingSystem
Usage: #definition

* name = "HPIProvider"
* description = "HPI providers"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/hpi-person-id"
* uniqueId.preferred = true
* uniqueId[1].type = #uri
* uniqueId[1].value = "https://standards.digital.health.nz/id/hpi-person"
* uniqueId[1].comment = "Deprecated"

Instance: hpiOrganization
InstanceOf: NamingSystem
Usage: #definition

* name = "HPIOrganization"
* description = "HPI organizations"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/hpi-organisation-id"
* uniqueId.preferred = true

* uniqueId[1].type = #uri
* uniqueId[1].value = "https://standards.digital.health.nz/ns/moh-agency-id"
* uniqueId[1].comment = "NZHIS Agency code. Deprecated"

* uniqueId[2].type = #uri
* uniqueId[2].value = "https://standards.digital.health.nz/id/hpi-organisation"
* uniqueId[2].comment = "Deprecated"


Instance: hpiFacility
InstanceOf: NamingSystem
Usage: #definition

* name = "HPIFacility"
* description = "HPI facilities"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/hpi-facility-id"
* uniqueId.preferred = true

* uniqueId[1].type = #uri
* uniqueId[1].value = "https://standards.digital.health.nz/ns/moh-facility-id"


* uniqueId[2].type = #uri
* uniqueId[2].value = "https://standards.digital.health.nz/id/hpi-facility"
* uniqueId[2].comment = "Deprecated"


Instance: hpipractitionerrole
InstanceOf: NamingSystem
Usage: #definition

* name = "HPIPractitionerRole"
* description = "HPI PractitionerRole id"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/hpi-practitionerrole-id"
* uniqueId.preferred = true


//------------
Instance: nzmc
InstanceOf: NamingSystem
Usage: #definition

* name = "NZMC"
* description = "Medical Council of New Zealand Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/medical-council-id"
* uniqueId.preferred = true

Instance: nznc
InstanceOf: NamingSystem
Usage: #definition

* name = "NZNC"
* description = "Nursing Council of New Zealand Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/nursing-council-id"
* uniqueId.preferred = true


Instance: nzpharm
InstanceOf: NamingSystem
Usage: #definition

* name = "NZMC"
* description = "Pharmacy Council of New Zealand Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/pharmacy-council-id"
* uniqueId.preferred = true


Instance: nzmwife
InstanceOf: NamingSystem
Usage: #definition

* name = "NZMidwife"
* description = "Midwifery Council Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/midwifery-council-id"
* uniqueId.preferred = true

Instance: nzbn
InstanceOf: NamingSystem
Usage: #definition

* name = "NBN"
* description = "New Zealand Business Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/hpi-nzbn"
* uniqueId.preferred = true


Instance: nzchrir
InstanceOf: NamingSystem
Usage: #definition

* name = "NZChiro"
* description = "Chiropractic Board Register number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/chiropractic-board-id"
* uniqueId.preferred = true

Instance: nzdental
InstanceOf: NamingSystem
Usage: #definition

* name = "NZDental"
* description = "Dental Council Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/dental-council-id"
* uniqueId.preferred = true

Instance: nzdiet
InstanceOf: NamingSystem
Usage: #definition

* name = "NZDiet"
* description = "Dietitians Board Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/dietitians-board-id"
* uniqueId.preferred = true

Instance: nzlab
InstanceOf: NamingSystem
Usage: #definition

* name = "NZLab"
* description = "Medical Laboratory Science Board Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/medical-laboratory-science-board-id"
* uniqueId.preferred = true

Instance: nzocc
InstanceOf: NamingSystem
Usage: #definition

* name = "NZOCC"
* description = "Occupational Therapy Board Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/occupational-therapy-board-id"
* uniqueId.preferred = true

Instance: nzopt
InstanceOf: NamingSystem
Usage: #definition

* name = "NZOpt"
* description = "Medical Council of New Zealand Register Numbe"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "Optometrists & Dispensing Opticians Board Register Number"
* uniqueId.preferred = true

Instance: nzost
InstanceOf: NamingSystem
Usage: #definition

* name = "NZOst"
* description = "Osteopathic Council Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/osteopathic-council-id"
* uniqueId.preferred = true

Instance: nzphysio
InstanceOf: NamingSystem
Usage: #definition

* name = "NZPhysio"
* description = "Physiotherapy Board Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/physiotherapy-board-id"
* uniqueId.preferred = true

Instance: nzpod
InstanceOf: NamingSystem
Usage: #definition

* name = "NZPodiatry"
* description = "Podiatrists Board Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = " https://standards.digital.health.nz/ns/podiatrists-board-id "
* uniqueId.preferred = true

Instance: nzpsyhc
InstanceOf: NamingSystem
Usage: #definition

* name = "NZPsych"
* description = "Psychologists Board Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/psychologists-board-id"
* uniqueId.preferred = true

Instance: nzrad
InstanceOf: NamingSystem
Usage: #definition

* name = "NZRadiologist"
* description = "Medical Radiation Technologists Board Register Number"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/medical-radiation-technologists-board-id"
* uniqueId.preferred = true


/*
Instance: nzlegacy
InstanceOf: NamingSystem
Usage: #definition

* name = "NZMC"
* description = "Legacy number for National Collections"
* status = #active
* kind = #identifier
* date = "2020-07-14"
* responsible = "HISO"

* uniqueId.type = #uri
* uniqueId.value = "https://standards.digital.health.nz/ns/legacy-tbd-id"
* uniqueId.preferred = true

*/