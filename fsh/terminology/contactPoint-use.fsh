Alias: $cpu = http://hl7.org/fhir/contact-point-use

ValueSet : ContactPointUse
Id: hpi-contactpoint-use
Title: "Usage of identifier"
Description: "Usage of identifier"

* ^url = "http://hl7.org.nz/fhir/ValueSet/hpi-contactpoint-use"

* $cpu#home "A communication contact point at a home; attempted contacts for business purposes might intrude privacy and chances are one will contact family or other household members instead of the person one wishes to call. Typically used with urgent cases, or if no other contacts are available."
* $cpu#work "An office contact point. First choice for business related contacts during business hours."
* $cpu#mobile "A telecommunication device that moves and stays with its owner. May have characteristics of all other use codes, suitable for urgent matters, not the first choice for routine business."