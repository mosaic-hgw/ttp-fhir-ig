Extension: ShortText
Id: ShortText
Title: "Short Text"
Description: "Kurztext zum Item"
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ShortText"
* ^context[0].type = #element
* ^context[=].expression = "Questionnaire.item"
* ^context[+].type = #element
* ^context[=].expression = "Questionnaire.item.item"
* . N
* . ^short = "Format von Policyversionsangaben"
* . ^definition = "Format von Versionsangaben für Policies"
* . ^comment = "Werden sowohl formatString als auch formatExpression angegeben, müssen diese synonym sein."
* url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ShortText" (exactly)
* value[x] 1.. N
* value[x] only string
