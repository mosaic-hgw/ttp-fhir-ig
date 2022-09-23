Instance: PolicyStatesForPerson
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* language = #de-DE
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gics/policyStatesForPerson"
* name = "PolicyStatesForPerson"
* title = "All policy states for person"
* kind = #operation
* description = "Liefert alle Consente einer Person einer spezifischen Einwilligungsdomaene. Die Rückgabe erfolgt als Bundle vom Typ \"collection\". Das Bundle enthält ausschließlich Consent-Ressourcen zur Abbildung der Policies, d.h. je unterzeichneter Policy ist eine Consent-Ressource mit jeweils einer Policy (provision) enthalten.\r\nEs werden alle jemals von Patienten unterzeichneten Policies zurückgegeben, per Default jedoch nur solche mit Status \"permit\". Mittels Parameter können auch alle Status berücksichtigt werden (permit/deny/unknown).\r\n\r\nHINWEIS: Ab TTP-FHIR-Gateway Release 2.1.0 ist diese Operation deprecated. Sie wird durch die Operations \"allPolicystatesforperson\" und \"currentPolicystatesforperson\" ersetzt."
* purpose = "Teil des FHIR Gateway für gICS. Weitere Infos unter https://ths-greifswald.de/gics"
* affectsState = false
* code = #policyStatesForPerson
* comment = "Liefert alle Consente einer Person einer spezifischen Einwilligungsdomaene. Die Rückgabe erfolgt als Bundle vom Typ \"collection\". Das Bundle enthält ausschließlich Consent-Ressourcen zur Abbildung der Policies, d.h. je unterzeichneter Policy ist eine Consent-Ressource mit jeweils einer Policy (provision) enthalten."
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
* parameter[+].name = #_profile
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe um Ausgabeprofil festzulegen.\r\nDefault ist die gics-Variante; alternativ das Profil aus dem IG Einwilligungsmanagement."
* parameter[=].type = #canonical
* parameter[+].name = #detailed-consent-status
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Ist dieser Parameter false (= Defaultwert), werden alle jemals existierenden Policies mit Status \"permit\" übermittelt. Wird er auf true gesetzt, werden alle Policy-Status berücksichtigt (permit/deny/unknown)."
* parameter[=].type = #boolean
