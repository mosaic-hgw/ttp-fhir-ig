Extension: TemplateVersionFormat
Id: TemplateVersionFormat
Title: "Template Version Format"
Description: "Versionierungsformat der Templates einer Consent Domain, basierend auf Vorarbeiten der AG Einwilligungsmanagement des InteropForums"
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/TemplateVersionFormat"
* ^context[0].type = #element
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* . N
* . ^short = "Format von Templateversionsangaben"
* . ^definition = "Format von Templateversionsangaben"
* . ^comment = "Werden sowohl formatString als auch formatExpression angegeben, müssen diese synonym sein."
* url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/TemplateVersionFormat" (exactly)
* value[x] 1.. N
* value[x] only string
