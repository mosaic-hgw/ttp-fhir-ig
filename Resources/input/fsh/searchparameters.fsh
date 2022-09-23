Instance: ActivityDefinitionCode
InstanceOf: SearchParameter
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/SearchParameter/gics/activityDefinitionCode"
* name = "activityDefinitionCode"
* description = "Eindeutiger Code der Consent Policy (ActivityDefiniton)"
* code = #code
* base = #ActivityDefinition
* type = #token
* expression = "code"
* multipleOr = false
* multipleAnd = false


Instance: useContextIdentifier
InstanceOf: SearchParameter
Usage: #definition
* insert meta-instance
* url = "https://ths-greifswald.de/fhir/SearchParameter/gics/useContextIdentifier"
* name = "useContextIdentifier"
* description = "Eindeutiger Name (Identifikator) der referenzierten Consent Domain"
* code = #useContextIdentifier
* base[0] = #ActivityDefinition
* base[+] = #Questionnaire
* type = #token
* expression = "useContext.valueReference.identifier"
* multipleOr = false
* multipleAnd = false
