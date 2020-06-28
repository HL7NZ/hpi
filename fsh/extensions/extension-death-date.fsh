Extension: Death_date
Id: death-date
Description: "The date the person died."

* ^context.type = #element
* ^context.expression = "Practitioner"

* ^purpose = "The date the person died. (def) "

* extension 0..0
* value[x] only date