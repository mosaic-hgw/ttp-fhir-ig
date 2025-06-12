ValueSet: ConsentComponentType
Id: ConsentComponentTypeVS
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/ValueSet/gics/ConsentComponentType"
* ^compose.include[0].system = "http://fhir.de/ConsentManagement/CodeSystem/QuestionnaireComponents"
* ^compose.include[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentComponentType"
* ^expansion.timestamp = "2021-04-12T12:00:00Z"
* ^expansion.total = 6
* ^expansion.contains[0].system = "http://fhir.de/ConsentManagement/CodeSystem/QuestionnaireComponents"
* ^expansion.contains[=].code = #TemplateModule
* ^expansion.contains[=].display = "Template-Module"
* ^expansion.contains[+].system = "http://fhir.de/ConsentManagement/CodeSystem/QuestionnaireComponents"
* ^expansion.contains[=].code = #TemplateFrame
* ^expansion.contains[=].display = "Template-Frame"
* ^expansion.contains[+].system = "http://fhir.de/ConsentManagement/CodeSystem/QuestionnaireComponents"
* ^expansion.contains[=].code = #QuestionnaireComposed
* ^expansion.contains[=].display = "Composed Questionnaire"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentComponentType"
* ^expansion.contains[=].code = #ConsentPolicy
* ^expansion.contains[=].display = "Consent-Policy"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentComponentType"
* ^expansion.contains[=].code = #ConsentModule
* ^expansion.contains[=].display = "Consent-Module"
* ^expansion.contains[+].system = "https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentComponentType"
* ^expansion.contains[=].code = #ConsentTemplate
* ^expansion.contains[=].display = "Consent-Template"
* include codes from system $QuestionnaireComponents
* include codes from system ConsentComponentType
