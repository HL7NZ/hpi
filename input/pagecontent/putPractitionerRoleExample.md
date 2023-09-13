


### Example Put PractitionerRole Requests

#### Update Telecom and Messaging Address

``` 
{
    "resourceType": "PractitionerRole",
    "id": "R00000197-A",
    "meta": {
        "versionId": "0",
        "lastUpdated": "2023-09-14T09:47:01.905+12:00",
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
                        "reference": "Person/17746"
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
                    "valueString": "UpdatedEDI"
                }
            ]
        }
    ],
    "identifier": [
        {
            "use": "official",
            "system": "https://standards.digital.health.nz/ns/hpi-practitionerrole-id",
            "value": "R00000197-A",
            "assigner": {
                "reference": "Organization/G00001-G"
            }
        }
    ],
    "period": {
        "start": "2022-05-05"
    },
    "practitioner": {
        "reference": "Practitioner/97ZACB",
        "display": "mx Ronny J Maunga"
    },
    "organization": {
        "reference": "Organization/GZZ998-G",
        "display": "Live Org with Dormant"
    },
    "code": [
        {
            "coding": [
                {
                    "system": "http://www.abs.gov.au/ausstats/abs@.nsf/mf/1220.0",
                    "version": "1.2",
                    "code": "253314",
                    "display": "Medical Oncologist"
                }
            ],
            "text": "Medical Oncologist"
        }
    ],
    "location": [
        {
            "reference": "Location/FZZ961-K",
            "display": "Medical Centre Street Address"
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


#### Update End date and Reason

```
{
    "resourceType": "PractitionerRole",
    "id": "R00000197-A",
    "meta": {
        "versionId": "0",
        "lastUpdated": "2023-09-14T09:47:01.905+12:00",
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
                        "reference": "Person/17746"
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
            "url": "http://hl7.org.nz/fhir/StructureDefinition/practitionerRole-status-reason",
                "valueCodeableConcept": {
                    "coding": [
                        {
                           "system": "https://standards.digital.health.nz/ns/hpi-practitioner-role-status-reason-code",
                            "code": "enteredInError",
                            "display": "Entered in error"
                        }
                 ]
        }
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
                    "valueString": "UpdatedEDI"
                }
            ]
        }
    ],
    "identifier": [
        {
            "use": "official",
            "system": "https://standards.digital.health.nz/ns/hpi-practitionerrole-id",
            "value": "R00000197-A",
            "assigner": {
                "reference": "Organization/G00001-G"
            }
        }
    ],
    "period": {
        "start": "2022-05-05",
        "end": "2022-05-06"
    },
    "practitioner": {
        "reference": "Practitioner/97ZACB",
        "display": "mx Ronny J Maunga"
    },
    "organization": {
        "reference": "Organization/GZZ998-G",
        "display": "Live Org with Dormant"
    },
    "code": [
        {
            "coding": [
                {
                    "system": "http://www.abs.gov.au/ausstats/abs@.nsf/mf/1220.0",
                    "version": "1.2",
                    "code": "253314",
                    "display": "Medical Oncologist"
                }
            ],
            "text": "Medical Oncologist"
        }
    ],
    "location": [
        {
            "reference": "Location/FZZ961-K",
            "display": "Medical Centre Street Address"
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
