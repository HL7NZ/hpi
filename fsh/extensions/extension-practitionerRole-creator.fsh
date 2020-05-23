Extension: PractitionerRole_creator
Id: practitionerRole-creator
Description: "The organisation and person that created this role"

* ^context.type = #element
* ^context.expression = "PractitionerRole"

* extension contains
    person 1..1 and
    organization 0..1

// definitions of sub-extensions
* extension[person].url = "person" (exactly)
* extension[person] ^definition = "The person who created the role"
* extension[person].value[x] only Reference (Practitioner)

* extension[organization].url = "organization" (exactly)
* extension[organization] ^definition = "The organization where the person was working (acting on behalf of?)"
* extension[organization].value[x] only Reference (Organization)
