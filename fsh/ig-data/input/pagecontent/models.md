Logical Models represent the information that is contained within each resource in this guide. It closely mirrors the structure in the associated profile, but it is not exactly the same, being designed more for understandibility by a non-technical audience rather than an implementer.

Differences to the profile include:
* Additional elements in the model are represented as extensions in the pfoile.
* There can be multiple elements in the model that are in the same element in the profile (Current and Dormant HPIs are an example of this).

In the linked pages in the table below, the snapshot tab is  the best to view the model.

| Logical Model | Purpose | Profile |
| --- | --- | --- |
| [Practitioner](StructureDefinition-HpiPractitionerLM.html) | The care provider. Can be a doctor, nurse, allied health practitioner or other. | [Profile](StructureDefinition-HpiPractitioner.html) |
| [PractitionerRole](StructureDefinition-HpiPractitionerRoleLM.html) | The details of a Practitioner in a Role at an Organization. Contact details for practitioners are held against the PractitionerRole - not the Practitioner.| [Profile](StructureDefinition-HpiPractitionerRole.html) |
| [Organization](StructureDefinition-HpiOrganizationLM.html) | Such as a DHB, PHO or Primary care organization. | [Profile](StructureDefinition-HpiOrganization.html) |
| [Location](StructureDefinition-HpiLocationLM.html) | An actual place where care is delivered. | [Profile](StructureDefinition-HpiLocation.html) |
| [Endpoint](StructureDefinition-HpiEndpointLM.html) | How and where to electronically communicate with an Organization . | [Profile](StructureDefinition-HpiEndpoint.html) |