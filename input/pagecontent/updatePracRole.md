


### Update PractitionerRole

#### Overview

An update on an HPI PractitionerRole resource allows an authorised user to update the contact details, messaging address (EDI) or add an end-date.

Prior to an update a user should have the hpi-practitionerrole-id and have the latest version of the record (the current version-id)

<div>
{% include update-practitionerrole.svg %}
</div>

#### Processing steps:

1.	The user initiates updating a PractitionerRole in the integrating application
2.	The user selects a role to update and supplies new contact details or an end date
3.	The API consumer sends an HTTP PUT request (a FHIR update) containing the previously returned Practitioner Role with the new details entered by the user. E.g. PUT\<Endpoint>/PractitionerRole/R00000009-H
4.	The request is validated - ALT: Validation failure. OperationOutcome resource returned
5.	The supplied PractitionerRole is updated on the HPI
6.	The HPI FHIR API confirms a successful update – HTTP 200 ok
7.	The integrating application indicates to the user the update has been successful and retains the version number for future requests relating to this record

* Put PractitionerRole example request (with end period and reason):

``` 
{
    "resourceType": "PractitionerRole",
    "id": "R00000012-G",
    "meta": {
        "profile": [
            "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitionerRole"
        ]
    },
    "extension": [
        {
            "url": "http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-status-reason",
            "valueCodeableConcept": {
                "coding": [
                    {
                        "system": "https://standards.digital.health.nz/ns/hpi-practitioner-role-status-reason-code",
                        "version": "1.0",
                        "code": "other",
                        "display": "Other"
                    }
                ],
                "text": "Other"
            }
        },
        {
            "url": "http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-creator",
            "extension": [
                {
                    "url": "person",
                    "valueReference": {
                        "reference": "Person/testall"
                    }
                },
                {
                    "url": "organization",
                    "valueReference": {
                        "reference": "Organization/G00001-G"
                    }
                }
            ]
        },
                {
            "url": "http://hl7.org.nz/fhir/StructureDefinition/messaging-address",
            "extension": [
                {
                    "url": "provider",
                    "valueString": "healthlink"
                },
                {
                    "url": "value",
                    "valueString": "changed-edi-address"
                }
            ]
        }
    ],
    "identifier": [
        {
            "use": "official",
            "system": "https://standards.digital.health.nz/ns/hpi-practitionerrole-id",
            "value": "R00000012-G",
            "assigner": {
                "reference": "Organization/G00001-G"
            }
        }
    ],
    "period": {
        "start": "2000-02-10",
        "end": "2000-02-11"
    },
    "practitioner": {
        "reference": "Practitioner/90ZZLP"
    },
    "organization": {
        "reference": "Organization/GZZ998-G"
    },
    "code": [
        {
            "coding": [
                {
                    "system": "http://www.abs.gov.au/ausstats/abs@.nsf/mf/1220.0",
                    "version": "1.2",
                    "code": "542114",
                    "display": "Medical Receptionist"
                }
            ],
            "text": "Medical Receptionist"
        }
    ],
    "location": [
        {
            "reference": "Location/FZZ999-B"
        }
    ],
    "telecom": [
        {
            "system": "email",
            "value": "infoooor@infooooor.com",
            "use": "work",
            "rank": 2,
            "period": {
                "start": "2000-02-10",
                "end": "2010-05-06"
            }
        },
        {
            "system": "phone",
            "value": "1324654788",
            "use": "work",
            "rank": 1,
            "period": {
                "start": "2000-02-10",
                "end": "2010-05-05"
            }
        }
    ]
}

```

### Update PractitionerRole Rules and errors

[For Request rules and errors click here](/general.html#request-rules-and-errors)

* **Update PractitionerRole rules**
  * A PractitionerRole update can only modify contact point, messaging address and period end-date
  * A PractitionerRole update must contain:
    * a valid hpi-practitionerrole-id
    * the curret version-id (added to the header as 'if-Match' {version-id}
    * an hpi-person-id matching the PractitionerRole record
    * an hpi-organisation-id and/or the hpi-facility-id (if present on the PractitionerRole record)
    * a PractitionerRole code (if present on the PractitionerRole record)
  * A PractitionerRole-status-reason is mandatory when a period end-date is supplied
  * A PractitionerRole update request cannot create a duplicate, or overlap another PractitionerRole record

* _Update PractitionerRole errors_
  * _"hpi-person-id invalid" (HTTP 422, Unprocessable, Error, Processing)_
  * _"hpi-person-id is required" (HTTP 422, Unprocessable, Error, Processing)_
  * _"hpi-organization-id or hpi-facility-id is required" (HTTP 422, Unprocessable, Error, Processing)_
  * _"Resource validation error: duplicate" (HTTP 422, Unprocessable, Error, Processing)_
  * _"PractitionerRole code requird" (HTTP 422, Unprocessable, Error, Processing)_
  * _"practitionerRole-status-reason is required" (HTTP 422, Unprocessable, Error, Processing)_

---

* **PractitionerRole update contact and period end-date rules and errors**
  * See [Add PractitionerRole rules and errors](/addPracRole.html)
