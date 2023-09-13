


### Example Put PractitionerRole Requests

#### Update Telecom

``` 
{
    "resourceType": "PractitionerRole",
    "id": "R00000027-K",
    "meta": {
        "versionId": "0",
        "lastUpdated": "2022-09-16T16:44:30.480+12:00",
        "profile": [
            "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitionerRole"
        ],
        "security": [
            {
                "system": "http://terminology.hl7.org/CodeSystem/v3-Confidentiality",
                "code": "M"
            }
        ]
    },
    "extension": [
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
        }
    ],
    "identifier": [
        {
            "use": "official",
            "system": "https://standards.digital.health.nz/ns/hpi-practitionerrole-id",
            "value": "R00000027-K",
            "assigner": {
                "reference": "Organization/G00001-G"
            }
        }
    ],
    "practitioner": {
        "reference": "Practitioner/98ZZDV",
        "display": "TestTwo DeadPractitioner Deadamonthago"
    },
    "organization": {
        "reference": "Organization/GZZ979-C",
        "display": "Mobile Contact Type Org"
    },
    "code": [
        {
            "coding": [
                {
                    "system": "http://www.abs.gov.au/ausstats/abs@.nsf/mf/1220.0",
                    "version": "1.2",
                    "code": "323112",
                    "display": "Aircraft Maintenance Engineer (Mechanical)"
                }
            ],
            "text": "Aircraft Maintenance Engineer (Mechanical)"
        }
    ],
    "location": [
        {
            "reference": "Location/FZZ992-K",
            "display": "NameType- Alternate Name"
        }
    ],
    "telecom": [
        {
            "system": "email",
            "value": "Nick.Dom@health.govt.nz",
            "use": "work",
            "rank": 1
        },
        {
            "system": "phone",
            "value": "1122334455",
            "use": "temp",
            "rank": 3,        
            "period": {
                "start": "2000-02-10",
                "end": "2010-05-06"
            }
        }
    ]
}

```


#### Update End date and reason

```

```



#### Update Messaging Address

```
{
    "resourceType": "PractitionerRole",
    "id": "R00000027-K",
    "meta": {
        "versionId": "3",
        "lastUpdated": "2023-09-13T13:29:13.207+12:00",
        "profile": [
            "http://hl7.org.nz/fhir/StructureDefinition/HPIPractitionerRole"
        ],
        "security": [
            {
                "system": "http://terminology.hl7.org/CodeSystem/v3-Confidentiality",
                "code": "M"
            }
        ]
    },
    "extension": [
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
                    "valueString": "pmspfwnz"
                }
            ]
        }
    ],
    "identifier": [
        {
            "use": "official",
            "system": "https://standards.digital.health.nz/ns/hpi-practitionerrole-id",
            "value": "R00000027-K",
            "assigner": {
                "reference": "Organization/G00001-G"
            }
        }
    ],
    "active": false,
    "practitioner": {
        "reference": "Practitioner/98ZZDV",
        "display": "TestTwo DeadPractitioner Deadamonthago"
    },
    "organization": {
        "reference": "Organization/GZZ979-C",
        "display": "Mobile Contact Type Org"
    },
    "code": [
        {
            "coding": [
                {
                    "system": "http://www.abs.gov.au/ausstats/abs@.nsf/mf/1220.0",
                    "version": "1.2",
                    "code": "323112",
                    "display": "Aircraft Maintenance Engineer (Mechanical)"
                }
            ],
            "text": "Aircraft Maintenance Engineer (Mechanical)"
        }
    ],
    "location": [
        {
            "reference": "Location/FZZ992-K",
            "display": "NameType- Alternate Name"
        }
    ],
    "telecom": [
        {
            "system": "phone",
            "value": "1122334455",
            "use": "temp",
            "rank": 3,
            "period": {
                "start": "2000-02-10",
                "end": "2010-05-06"
            }
        },
        {
            "system": "email",
            "value": "Nick.Dom@health.govt.nz",
            "use": "work",
            "rank": 1
        }
    ]
}
```
