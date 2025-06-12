ValueSet: ConsentStatusRefusalShortValues
Id: ConsentStatusRefusalShortValuesVS
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/ValueSet/gics/ConsentStatusRefusalShortValues"
* ^compose.include[0].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^compose.include[=].concept[0].code = #ACCEPTED
* ^compose.include[=].concept[+].code = #DECLINED
* ^compose.include[=].concept[+].code = #NOT_ASKED
* ^compose.include[=].concept[+].code = #NOT_CHOSEN
* ^expansion.timestamp = "2021-04-12T12:00:00Z"
* ^expansion.total = 2
* ^expansion.parameter.name = "designation"
* ^expansion.parameter.valueCode = #refusal
* ^expansion.contains[0].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #ACCEPTED
* ^expansion.contains[=].display = "Einwilligen"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus"
* ^expansion.contains[=].code = #DECLINED
* ^expansion.contains[=].display = "Ja"
* ConsentStatus#ACCEPTED
* ConsentStatus#DECLINED
