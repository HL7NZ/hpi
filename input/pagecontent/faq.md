 

### Where do I find the Healthlink address for a provider?
The HPI has HealthLink addresses recorded against HPI Facilities (Location).
These can be extracted from Location.telecom EDI extension.

See [here](usecases.html#lookup-edi-for-an-enrolled-patients-gp) for more details.

 

### What if I know a person’s medical council number but not their HPI number, can I still access their details?

Yes, use a query practitioner with another identifier. See [here](usecases.html#query-practitioner-with-another-identifier-eg-nursing-council-number)  for more details

 

### Where do I find a practitioners Practising Certificate dates?

A practitioner’s Practising Certificate (also known as an Annual Practising Certificate or APC) is returned in the HpiPractitioner.qualification.period attribute.  It is the most recent practising period supplied by the RA. The APC period may be in the past or start in the future.  The registration status as well as the APC should be assessed when determining a practitioner’s authority to practice. The registration status should be current and todays date should lie within the qualification.period. Registration status of inactive, removed or suspended should be treated as exceptions.

 

### What if a Practitioner retires, what will their record look like?

If a practitioner has retired and asked to be removed from the register their registration status will be ‘removed’.

 

### Can I do bulk look ups of many practitioners at a time?

There is no bulk operation supported at this time. However, the Practitioner Read by Id has a good response time and the HPI is designed to cope with high loads. If you need to send bulk requests or process high volumes, please contact us to discuss.



### Why are the date of birth, gender and ethnicity missing from all practitioners?

These details are supplied when a practitioner is added and maintained by their Responsible Authority and are used in non-identifiable analysis eg workforce planning. They are withheld on a Get Practitioner response and only available to users with admin permissions and only if they have a specific need for these details.


### Which period  should be used for an APC expiration check?

When checking that a practitioner is currently licenced, systems should check that the Registration Status Code is current and that todays date falls within the qualification period.

The Practitioner.qualification.period is the start and end dates of the most recently issued Annual Practicing Certificate (APC).

There is also a RegistrationStatusCode period that is part of the registration details for a practitioner. This is the start date that this status was applied.  If the status is ‘'removed’ then this is the date the practitioner was removed from the register.
