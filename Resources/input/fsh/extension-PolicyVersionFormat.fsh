Extension: PolicyVersionFormat
Id: PolicyVersionFormat
Title: "Policy Version Format"
Description: "Versionierungsformat der Policies einer Consent Domain, basierend auf Vorarbeiten der AG Einwilligungsmanagement des InteropForums"
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/PolicyVersionFormat"
* ^context[0].type = #element
* ^context[=].expression = "ResearchStudy"
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* . N
* . ^short = "Format von Policyversionsangaben"
* . ^definition = "Format von Versionsangaben für Policies"
* . ^comment = "Werden sowohl formatString als auch formatExpression angegeben, müssen diese synonym sein."
* url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/PolicyVersionFormat" (exactly)
* value[x] 1.. N
* value[x] only string
