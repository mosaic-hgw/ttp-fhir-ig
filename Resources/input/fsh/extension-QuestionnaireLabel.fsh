Extension: QuestionnaireLabel
Id: QuestionnaireLabel
Title: "Questionnaire Label"
Description: "Erweiterung für Vergabe eines Labels in Questionnaires"
* insert meta-profile
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/QuestionnaireLabel"
* ^purpose = "Erweiterung für Vergabe eines Labels in Questionnaires"
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire"
* . ..1 N
* url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/QuestionnaireLabel" (exactly)
* value[x] only string
* value[x] N
