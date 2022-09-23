Instance: AllPolicyStatesForPerson
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* language = #de-DE
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gics/allPolicyStatesForPerson"
* name = "AllPolicyStatesForPerson"
* title = "All policy states for person"
* kind = #operation
* description = "Liefert alle jemals unterzeichneten Policies einer Person einer spezifischen Einwilligungsdomaene. Die Rückgabe erfolgt als Bundle vom Typ \"collection\". Das Bundle enthält ausschließlich Consent-Ressourcen zur Abbildung der Policies, d.h. je unterzeichneter Policy ist eine Consent-Ressource mit jeweils einer Policy (provision) enthalten.\r\nEs werden alle jemals von Patienten unterzeichneten Policies zurückgegeben (ConsentProvisionType: permit/deny). Policies mit gICS-internem Status UNKNOWN, NOT_ASKED, NOT_CHOSEN, WITHDRAWN, INVALIDATED, REFUSED oder EXPIRED werden mit ConsentProvisionType \"deny\" zurückgegeben.\r\n\r\nSollen nur die jeweils neueste Policies angezeigt werden, ist clientseit eine Filterung anhand Datum, Policyversion etc. erforderlich oder alternativ die Operation currentPolicyStatesForPerson zu nutzen."
* purpose = "Teil des FHIR Gateway für gICS. Weitere Infos unter https://ths-greifswald.de/gics"
* affectsState = false
* code = #allPolicyStatesForPerson
* comment = "Liefert alle jemals unterzeichneten Policies einer Person einer spezifischen Einwilligungsdomaene. Die Rückgabe erfolgt als Bundle vom Typ \"collection\". Das Bundle enthält ausschließlich Consent-Ressourcen zur Abbildung der Policies, d.h. je unterzeichneter Policy ist eine Consent-Ressource mit jeweils einer Policy (provision) enthalten.\r\nEs werden alle jemals von Patienten unterzeichneten Policies zurückgegeben (ConsentProvisionType: permit/deny). Policies mit gICS-internem Status UNKNOWN, NOT_ASKED, NOT_CHOSEN, WITHDRAWN, INVALIDATED, REFUSED oder EXPIRED werden mit ConsentProvisionType \"deny\" zurückgegeben.\r\n\r\nSollen nur die jeweils neueste Policies angezeigt werden, ist clientseit eine Filterung anhand Datum, Policyversion etc. erforderlich oder alternativ die Operation currentPolicyStatesForPerson zu nutzen."
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
