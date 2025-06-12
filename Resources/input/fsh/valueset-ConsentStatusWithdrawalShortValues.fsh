ValueSet: ConsentStatusWithdrawalShortValues
Id: ConsentStatusWithdrawalShortValuesVS
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/ValueSet/gics/ConsentStatusWithdrawalShortValues"
* ^compose.include[0].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^compose.include[=].concept[0].code = #WITHDRAWN
* ^compose.include[=].concept[+].code = #NOT_CHOSEN
* ^expansion.timestamp = "2021-04-12T12:00:00Z"
* ^expansion.total = 2
* ^expansion.parameter.name = "designation"
* ^expansion.parameter.valueCode = #withdrawal
* ^expansion.contains[0].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #WITHDRAWN
* ^expansion.contains[=].display = "Ja"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #NOT_CHOSEN
* ^expansion.contains[=].display = "Nein"
* ConsentStatus#WITHDRAWN
* ConsentStatus#NOT_CHOSEN
