This is the logical model that represents the business data that id exposed for a
 Provider of healthcare such as a Doctor, Nurse or Allied Health provider.

 It does not represent the actual format of the exposed resource (which is a [Practitioner](http://hl7.org/fhir/practitioner.html)), rather the data within it.

Specific notes:

* The registration is represented in the Practitioner.qualification element
* Additional Authorizations are an extension in Practitioner.qualification
* Scope of practice are an extension in Practitioner.qualification
* Condition on practice are an extension in Practitioner.qualification

The actual profile on Practitioner can he found [here](StructureDefinition-HpiPractitioner.html)

These are defined in the [New Zealand Base Implementation Guide](http://build.fhir.org/ig/HL7NZ/nzbase/branches/master/extensions.html)