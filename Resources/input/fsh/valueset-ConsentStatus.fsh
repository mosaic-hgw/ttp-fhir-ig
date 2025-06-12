ValueSet: ConsentStatus
Id: ConsentStatusVS
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/ValueSet/gics/ConsentStatus"
* ^compose.include[0].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.timestamp = "2021-04-12T12:00:00Z"
* ^expansion.total = 11
* ^expansion.contains[0].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #ACCEPTED
* ^expansion.contains[=].display = "ACCEPTED"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #ACCEPTED_OPT_OUT
* ^expansion.contains[=].display = "ACCEPTED_OPT_OUT"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #DECLINED
* ^expansion.contains[=].display = "DECLINED"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #UNKNOWN
* ^expansion.contains[=].display = "UNKNOWN"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #NOT_ASKED
* ^expansion.contains[=].display = "NOT ASKED"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #NOT_CHOSEN
* ^expansion.contains[=].display = "NOT CHOSEN"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #WITHDRAWN
* ^expansion.contains[=].display = "WITHDRAWN"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #INVALIDATED
* ^expansion.contains[=].display = "INVALIDATED"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #REFUSED
* ^expansion.contains[=].display = "REFUSED"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #EXPIRED
* ^expansion.contains[=].display = "EXPIRED"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #OBJECTED
* ^expansion.contains[=].display = "OBJECTED"
* include codes from system ConsentStatus
