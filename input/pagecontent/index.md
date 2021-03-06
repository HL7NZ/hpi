<!-- index.md {% comment %}
*****************************************************************************************
*                            WARNING: DO NOT EDIT THIS FILE                             *
*                                                                                       *
* This file is generated by SUSHI. Any edits you make to this file will be overwritten. *
*                                                                                       *
* To change the contents of this file, edit the original source file at:                *
* ig-data/input/pagecontent/index.md                                                    *
*****************************************************************************************
{% endcomment %} -->
This is the Implementation Guide for the [HL7® FHIR©](hl7.org/fhir) interface to the New Zealand HPI - Health Provider Index. It brings together all the artifacts that are necessary to understand and use the FHIR API. O

The HPI ([Health Provider Index](https://www.health.govt.nz/our-work/health-identity/health-provider-index)) is a national registry service that holds information about the providers of healthcare in New Zealand, including the organizations where they work and the facilities that they work from. The key entities that are supported are:

The Person - described by the FHIR [Practitioner](http://hl7.org/fhir/practitioner.html) resource. Note that these are intended to be all providers of healthcare.
Facilities where healthcare is provided from. These are represented by [Location](http://hl7.org/fhir/location.html) resources.
Organizations such as DHB’s, PHO,s and primary care organizations ([Organization](http://hl7.org/fhir/organization.html))
In addition, there is support for registering where a Practitioner works, and in what role - the [PractitionerRole](http://hl7.org/fhir/practitionerrole.html) resource.

The HPI serves 2 primary purposes:

* A unique identifier for each individual or entity
* The source of truth for the key information about that entity. 

Note that the HPI is not necessarily the actual source of information (eg Practitioners are supplied by a registration authority, healthcare workers are supplied by their employing organisation) but it is the place to go to find the information.

### Description of tabs

* **General notes:**  Common notes about how the API and contents are organized
* **API:** The specific API features supported by the HPI.
* **Profiles:** A list of the profiles that are defined by the guide. They are all descendants of NZ Base.
* **Extensions:** A list of the extensions defined by the guide, and extensions that are defined elsewhere.
* **Identifiers:** The Identifier systems (Register numbers) currently defined.
* **Terminology:** The ValueSets and CodeSystems defined by the guide. 
* **FAQ:** Frequently Asked Questions
* **Artifact Index:** A page with all artifacts (Logical Models, Profiles, Extensions, Terminology and others) defined in this guide. This page largely duplicates information in the Profiles and Extensions tab.
* **Table of Contents** All pages in the guide
* **Support** Links to the FHIR spec and downloads. Also has links to the IG Companion (under review...)


### Logical Models

[Logical models](artifacts.html#structures-logical-models) are part of the design process, and represent the information in the profiles in an easy to understand format. For example extensions are displayed as simple elements, and there is less FHIR-specific detail such as slicing and fixed elements.

It is intended as a way for people who are not familiar with FHIR to understand profile content, and does **not** represent the 'on-the-wire' format delivered through the API. They do, however, have links to terminology resources.

### Security

Not addressed by this guide

