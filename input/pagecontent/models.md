<!-- models.md {% comment %}
*****************************************************************************************
*                            WARNING: DO NOT EDIT THIS FILE                             *
*                                                                                       *
* This file is generated by SUSHI. Any edits you make to this file will be overwritten. *
*                                                                                       *
* To change the contents of this file, edit the original source file at:                *
* ig-data/input/pagecontent/models.md                                                   *
*****************************************************************************************
{% endcomment %} -->
Logical Models represent the information that is contained within each resource in this guide. It closely mirrors the structure in the associated profile, but it is not exactly the same, being designed more for understandibility by a non-technical audience rather than an implementer.

Differences to the profile include:
* Additional elements in the model are represented as extensions in the pfoile.
* There can be multiple elements in the model that are in the same element in the profile (Current and Dormant HPIs are an example of this).

Logical models use FHIR datatypes (in fact, they use the same [underlying infrastructure](http://hl7.org/fhir/structuredefinition.html) as profiles do). If the datatype is a [complex](http://hl7.org/fhir/datatypes.html#complex) one,  and the possible child elements are the same, then the element will simply have the required data type. However, there are a couple of edge cases:
* If only some of the child elements are supported, then the supported ones will be listed as child elements.
* If there are additional elements (such as the address suburb) but the others are supported, then the addiitonal child element is listed.
* If there is a combination of the above - only some child datatypes are supported, and there are additional ones, then all subelements are present.

In the linked pages in the table below, the differential or snapshot tab is the best view of the model.

| Logical Model | Purpose | Profile |
| --- | --- | --- |
| [Practitioner](StructureDefinition-HpiPractitionerLM.html) | The care provider. Can be a doctor, nurse, allied health practitioner or other. | [Profile](StructureDefinition-HpiPractitioner.html) |
| [PractitionerRole](StructureDefinition-HpiPractitionerRoleLM.html) | The details of a Practitioner in a Role at an Organization. Contact details for practitioners are held against the PractitionerRole - not the Practitioner.| [Profile](StructureDefinition-HpiPractitionerRole.html) |
| [Organization](StructureDefinition-HpiOrganizationLM.html) | Such as a DHB, PHO or Primary care organization. | [Profile](StructureDefinition-HpiOrganization.html) |
| [Location](StructureDefinition-HpiLocationLM.html) | An actual place where care is delivered. | [Profile](StructureDefinition-HpiLocation.html) |
| [Endpoint](StructureDefinition-HpiEndpointLM.html) | How and where to electronically communicate with an Organization . | [Profile](StructureDefinition-HpiEndpoint.html) |