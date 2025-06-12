Extension: Comment
Id: Comment
Title: "Comment"
Description: "ergänzender Kommentar"
* insert meta-profile
* ^status = #active
* ^url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Comment"
* ^context.type = #element
* ^context.expression = "Resource"
* . N
* . ^short = "Format von Modulversionsangaben"
* . ^definition = "Format von Versionsangaben für Module"
* . ^comment = "Werden sowohl formatString als auch formatExpression angegeben, müssen diese synonym sein."
* url = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Comment" (exactly)
* value[x] 1.. N
* value[x] only string
