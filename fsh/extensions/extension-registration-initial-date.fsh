Extension: Registration_initial_date
Id: registration-initial-date
Description: "The date the practitioner first became registered with the Responsible Authority or professional body"

* ^url = "http://hl7.org.nz/fhir/StructureDefinition/registration-initial-date"
* ^context.type = #element
* ^context.expression = "Practitioner.qualification"

* extension 0..0
* value[x] only date