Extension: Registration_status
Id: registration-status
Description: "An indicator of the practicing status of the practitioner as supplied by their Responsible Authority or professional body."

* ^context.type = #element
* ^context.expression = "Practitioner.qualification"

* extension 0..0
* value[x] only CodeableConcept
* valueCodeableConcept from http://hl7.org.nz/fhir/ValueSet/practitioner-registration-status (preferred)
