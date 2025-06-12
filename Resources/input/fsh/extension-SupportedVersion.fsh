Extension: SupportedVersion
Id: SupportedVersion
Title: "SupportedVersion"
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/SupportedVersion"
* ^context.type = #element
* ^context.expression = "Bundle.type"
* . N
* . ^short = "Format von Modulversionsangaben"
* . ^definition = "Format von Versionsangaben für Module"
* . ^comment = "Werden sowohl formatString als auch formatExpression angegeben, müssen diese synonym sein."
* url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/SupportedVersion" (exactly)
* value[x] 1.. N
* value[x] only string
