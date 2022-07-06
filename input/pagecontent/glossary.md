

### Glossary

#### Practitioner

* Practitioner synonym’s
  * A Provider, person and practitioner are synonymous

* Practitioner Identifier
  * Official = hpi-person-id
  * Synonymous names that should be avoided:
    * CPN
    * HPI Number
    * HPI-CPN
    * Common Person Number

---

#### Facility (Location)

* Facility Identifier
  * Official = hpi-facility-id
  * Synonymous names that should be avoided:
    * HPI Number
    * Facility ID
    * FacID

---

#### Organisation
* Organisation Identifier
  * Official = hpi-organisation-id
  * Synonymous names that should be avoided:
    * OrganizationID
    * HPI Number
    * OrgID

---

#### Practitioner Role
* Practitioner Role identifier
  * Official = hpi-practitionerrole-id

* Duplicate PractitionerRole record
  * A practitionerRole record is a duplicate of another if they both have the same;
    * hpi-person-id AND,
    * hpi-organisation-id AND,
    * hpi-facility-id AND,
    * RoleCode AND,
    * a period that overlaps unless that practitionerRole record has a statusReason = entered in error or duplicate.

* Duplicate period
  * Two periods are not overlapping if one starts on the same day the other ends.
  * If an existing PractitionerRole period starts and ends on the same day and a request is made to add another pracRole starting and ending on the very same day then the request will be rejected as a duplicate.

* Duplicate contact point
  * A duplicate contactpoint is one that has the same system, value and use as another existing active contactpoint for that pracRole record
