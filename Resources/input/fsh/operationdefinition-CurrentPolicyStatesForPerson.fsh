Instance: CurrentPolicyStatesForPerson
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* language = #de-DE
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gics/currentPolicyStatesForPerson"
* name = "CurrentPolicyStatesForPerson"
* title = "Current policy states for person"
* kind = #operation
* description = "Liefert die aktuellen, gültigen Policies einer Person einer spezifischen Einwilligungsdomaene (Status: permit, deny). Die Rückgabe erfolgt als Bundle vom Typ \"collection\". Das Bundle enthält ausschließlich Consent-Ressourcen zur Abbildung der Policies, d.h. je unterzeichneter Policy ist eine Consent-Ressource mit jeweils einer Policy (provision) enthalten.\r\n\r\nPer default werden alle aktuell gültigen vom Patienten unterzeichneten Policies zurückgegeben (Accepted=Permit, Declined=Deny, Unknown=Deny). Sollen eingewilligte Policies mit Status \"Unknown\" ignoriert werden (mittels UNKNOWN können detailliertere Statusangaben wie UNKNOWN, NOT_ASKED, NOT_CHOSEN, WITHDRAWN, INVALIDATED, REFUSED und EXPIRED intern gruppiert werden) , kann dies parametrisiert werden (checkconsentconfig.unknownStateIsConsideredAsDecline=false)."
* purpose = "Teil des FHIR Gateway für gICS. Weitere Infos unter https://ths-greifswald.de/gics"
* affectsState = false
* code = #currentPolicyStatesForPerson
* comment = "Liefert die aktuellen, gültigen Policies einer Person einer spezifischen Einwilligungsdomaene (Status: permit, deny). Die Rückgabe erfolgt als Bundle vom Typ \"collection\". Das Bundle enthält ausschließlich Consent-Ressourcen zur Abbildung der Policies, d.h. je unterzeichneter Policy ist eine Consent-Ressource mit jeweils einer Policy (provision) enthalten.\r\n\r\nPer default werden alle aktuell gültigen vom Patienten unterzeichneten Policies zurückgegeben (Accepted=Permit, Declined=Deny, Unknown=Deny). Sollen eingewilligte Policies mit Status \"Unknown\" ignoriert werden (mittels UNKNOWN können detailliertere Statusangaben wie UNKNOWN, NOT_ASKED, NOT_CHOSEN, WITHDRAWN, INVALIDATED, REFUSED und EXPIRED intern gruppiert werden) , kann dies parametrisiert werden (checkconsentconfig.unknownStateIsConsideredAsDecline=false)."
* system = true
* type = false
* instance = false
* parameter[0].name = #personIdentifier
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "Um den Bezug zwischen Person und Einwilligung herzustellen, ist die Angabe von mindestens einem eindeutigen Personenidentifikator erforderlich. Dies kann je nach Anforderungen die Fallnummer, ein Patienten-Identifikator, die Angabe eines Bevollmächtigten oder ein Studienpseudonym, o.ä. sein. Bei Angabe von mehreren Identifikatoren und Verzicht auf Config-Parameter werden diese ODER-verknüpft (dies entspricht der Konfiguration AT-LEAST-ONE)."
* parameter[=].type = #Identifier
* parameter[+].name = #domain
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Einwilligungsdomaene"
* parameter[=].type = #string
* parameter[+].name = #config
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Parameters
* parameter[=].targetProfile = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Parameters/Config"
