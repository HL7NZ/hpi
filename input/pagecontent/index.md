
This is the Implementation Guide for the [HL7® FHIR©](http://hl7.org/fhir) interface to the New Zealand HPI - Health Provider Index. It brings together all the artifacts that are necessary to understand and use the FHIR API. O

The HPI ([Health Provider Index](https://www.health.govt.nz/our-work/health-identity/health-provider-index)) is a national registry service that holds information about the providers of healthcare in New Zealand, including the organizations where they work and the facilities that they work from. The key entities that are supported are:

The Person - described by the FHIR [Practitioner](http://hl7.org/fhir/practitioner.html) resource. 
Facilities where healthcare is provided from. These are represented by [Location](http://hl7.org/fhir/location.html) resources.
Organizations such as DHB’s, PHO,s and primary care organizations ([Organization](http://hl7.org/fhir/organization.html))
In addition, there is support for registering where a Practitioner works, and in what role - the [PractitionerRole](http://hl7.org/fhir/practitionerrole.html) resource.

The HPI serves 2 primary purposes:

* A unique identifier for each individual or entity
* An authoritative for the key information about that entity. 


### Description of tabs

* **BusinessOverview:**  Business context of the HPI
* **General notes:**  Common notes about how the API and contents are organized
* **API:** The specific API features supported by the HPI.
* **Profiles:** A list of the profiles that are defined by the guide. 
* **Extensions:** A list of the extensions defined by the guide, and extensions that are defined elsewhere.
* **Identifiers:** The Identifier systems currently defined.
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

