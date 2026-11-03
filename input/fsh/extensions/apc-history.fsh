Extension: HpiApcHistory
Id: apc-history
Title: "APC History"
Description: "A period covered by an annual practicing certificate (APC) for a practitioner's registration."
* ^url = "http://hl7.org.nz/fhir/StructureDefinition/apc-history"
* ^context.type = #element
* ^context.expression = "Practitioner.qualification"
* extension contains period 1..1
* extension[period].value[x] only Period
* value[x] 0..0