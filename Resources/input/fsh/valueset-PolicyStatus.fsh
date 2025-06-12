ValueSet: PolicyStatus
Id: PolicyStatusVS
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/ValueSet/gics/PolicyStatus"
* ^compose.include[0].system = "http://hl7.org/fhir/ValueSet/consent-provision-type"
* ^compose.include[+].system = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* ^compose.include[=].concept[0].code = #UNK
* ^expansion.timestamp = "2021-09-05T11:23:00+00:00"
* ^expansion.total = 3
* ^expansion.contains[0].system = "http://hl7.org/fhir/consent-provision-type"
* ^expansion.contains[=].code = #deny
* ^expansion.contains[=].display = "Opt Out"
* ^expansion.contains[+].system = "http://hl7.org/fhir/consent-provision-type"
* ^expansion.contains[=].code = #permit
* ^expansion.contains[=].display = "Opt In"
* ^expansion.contains[+].system = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* ^expansion.contains[=].code = #UNK
* ^expansion.contains[=].display = "unknown"
* include codes from valueset ConsentProvisionType
* $v3-NullFlavor#UNK
