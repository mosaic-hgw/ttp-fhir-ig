Extension: ModuleVersionFormat
Id: ModuleVersionFormat
Title: "Module Version Format"
Description: "Versionierungsformat der Module einer Consent Domain, basierend auf Vorarbeiten der AG Einwilligungsmanagement des InteropForums"
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ModuleVersionFormat"
* ^context[0].type = #element
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* . N
* . ^short = "Format von Modulversionsangaben"
* . ^definition = "Format von Versionsangaben für Module"
* . ^comment = "Werden sowohl formatString als auch formatExpression angegeben, müssen diese synonym sein."
* url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/ModuleVersionFormat" (exactly)
* value[x] 1.. N
* value[x] only string
