Instance: CurrentConsentForPersonAndTemplate
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* language = #de-DE
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gics/currentConsentForPersonAndTemplate"
* name = "CurrentConsentForPersonAndTemplate"
* title = "Current consent for person and template"
* kind = #operation
* description = "Liefert den aktuellen Consent einer Person bezogen auf eine spezifische Einwilligungsvorlage (unter Angabe des TemplateFrame-Identifiers) per POST-Request. Aktuell bedeutet <b>\"höchste Version der Einwilligungsvorlage\" UND \"jüngstes Datum\"</b>. Die Rückgabe erfolgt als Bundle vom Typ \"collection\". Das Bundle enthält alle für den spezifischen Consent relevanten Ressourcen (z.B. TemplateFrame, QuestionnaireComposed, QuestionnaireResponse, Provenance). Details zu den verwendeten Profilen unter https://simplifier.net/guide/einwilligungsmanagement/igeinwilligungsmanagement"
* purpose = "Teil des FHIR Gateway für gICS. Weitere Infos unter https://ths-greifswald.de/gics"
* affectsState = false
* code = #currentConsentForPersonAndTemplate
* comment = "Liefert den aktuellen Consent einer Person bezogen auf eine spezifische Einwilligungsvorlage (unter Angabe des TemplateFrame-Identifiers) per POST-Request. Aktuell bedeutet <b>\"höchste Version der Einwilligungsvorlage\" UND \"jüngstes Datum\"</b>. Die Rückgabe erfolgt als Bundle vom Typ \"collection\". Das Bundle enthält exakt einen Bundle-Entry, der alle für den spezifischen Consent relevanten Ressourcen (z.B. TemplateFrame, QuestionnaireComposed, QuestionnaireResponse, Provenance) enthält. Details zu den verwendeten Profilen unter https://simplifier.net/guide/einwilligungsmanagement/igeinwilligungsmanagement"
* system = true
* type = false
* instance = false
* parameter[0].name = #personIdentifier
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "Um den Bezug zwischen Person und Einwilligung herzustellen, ist die Angabe von mindestens einem eindeutigen Personenidentifikator erforderlich. Dies kann je nach Anforderungen die Fallnummer, ein Patienten-Identifikator, die Angabe eines Bevollmächtigten oder ein Studienpseudonym, o.ä. sein. Bei Angabe von mehreren Identifikatoren werden diese ODER-verknüpft."
* parameter[=].type = #Identifier
* parameter[+].name = #domain
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Einwilligungsdomaene"
* parameter[=].type = #string
* parameter[+].name = #ignore-version-number
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Wenn TRUE, wird die Datumsbezogen jüngste Einwilligung der Person ermittelt und die Versionsangabe der spezifizierten Einwilligungsvorlage (TemplateFrame) ignoriert. Default=FALSE"
* parameter[=].type = #boolean
* parameter[+].name = #template
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der eindeutigen TemplateId in Form des  TemplateFrame.Identifier.Value für das vorbelegte Template.Identifier.System \"https://ths-greifswald.de/fhir/gics/\""
* parameter[=].type = #string
* parameter[+].name = #_profile
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe um Ausgabeprofil festzulegen.\r\nDefault ist die gics-Variante; alternativ das Profil aus dem IG Einwilligungsmanagement."
* parameter[=].type = #canonical


Instance: CurrentConsentForPersonAndTemplate-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[0].name = "personIdentifier"
* parameter[=].valueIdentifier.system = "https://ths-greifswald.de/fhir/gics/identifiers/Pseudonym"
* parameter[=].valueIdentifier.value = "dic_1H51T"
* parameter[+].name = "domain"
* parameter[=].valueString = "MII"
* parameter[+].name = "template"
* parameter[=].valueString = "MII;Patienteneinwilligung MII;1.6.f"
* parameter[+].name = "ignore-version-number"
* parameter[=].valueBoolean = false
