Instance: AllConsentsForTemplate
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* language = #de-DE
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gics/allConsentsForTemplate"
* name = "AllConsentsForTemplate"
* title = "All consents for template"
* kind = #operation
* description = "Liefert alle Consente eines spezifischen TemplateFrame unter Angabe des TemplateFrame-Identifiers (Vorlagenbezug) per POST-Request. Die Rückgabe erfolgt als Bundle vom Typ \"collection\". Das Bundle enthält je Consent einen Bundle-Entry, der alle für den spezifischen Consent relevanten Ressourcen (z.B. TemplateFrame, QuestionnaireComposed, QuestionnaireResponse, Provenance) enthält. Details zu den verwendeten Profilen unter https://simplifier.net/guide/einwilligungsmanagement/igeinwilligungsmanagement"
* purpose = "Teil des FHIR Gateway für gICS. Weitere Infos unter https://ths-greifswald.de/gics"
* affectsState = false
* code = #allConsentsForTemplate
* comment = "Liefert alle Consente eines spezifischen TemplateFrame unter Angabe des TemplateFrame-Identifiers (Vorlagenbezug) per POST-Request. Die Rückgabe erfolgt als Bundle vom Typ \"collection\". Das Bundle enthält je Consent einen Bundle-Entry, der alle für den spezifischen Consent relevanten Ressourcen (z.B. TemplateFrame, QuestionnaireComposed, QuestionnaireResponse, Provenance) enthält. Details zu den verwendeten Profilen unter https://simplifier.net/guide/einwilligungsmanagement/igeinwilligungsmanagement"
* system = true
* type = false
* instance = false
* parameter[0].name = #template
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der eindeutigen TemplateId in Form des  TemplateFrame.Identifier.Value für das vorbelegte Template.Identifier.System \"https://ths-greifswald.de/fhir/gics/\""
* parameter[=].type = #string
* parameter[+].name = #domain
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Einwilligungsdomaene"
* parameter[=].type = #string
* parameter[+].name = #_profile
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe um Ausgabeprofil festzulegen.\r\nDefault ist die gics-Variante; alternativ das Profil aus dem IG Einwilligungsmanagement."
* parameter[=].type = #canonical
