Instance: IsConsented
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* language = #de-DE
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gics/isConsented"
* name = "IsConsented"
* title = "Patient's consent status for a defined policy"
* kind = #operation
* description = "Liefert den Einwilligungsstatus eines Patienten für eine spezifische Policy per POST-Request. Die Rückgabe erfolgt als Parameters-Ressource."
* purpose = "Teil des FHIR Gateway für gICS. Weitere Infos unter https://ths-greifswald.de/gics"
* affectsState = false
* code = #isConsented
* comment = "Liefert den Einwilligungsstatus eines Patienten für eine spezifische Policy per POST-Request. Die Rückgabe erfolgt als Parameters-Ressource."
* system = true
* type = false
* instance = false
* parameter[0].name = #personIdentifier
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "*"
* parameter[=].documentation = "Um den Bezug zwischen Person und Einwilligung herzustellen, ist die Angabe von mindestens einem eindeutigen Personenidentifikator erforderlich. Dies kann je nach Anforderungen die Fallnummer, ein Patienten-Identifikator, die Angabe eines Bevollmächtigten oder ein Studienpseudonym, o.ä. sein und erfolgt unter Verwendung des passenden Patienten-Profils der AG Einwilligungsmanagement: https://simplifier.net/guide/Einwilligungsmanagement/Patient.\r\nBei Angabe von mehreren Identifikatoren werden diese ODER-verknüpft."
* parameter[=].type = #Identifier
* parameter[+].name = #domain
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Einwilligungsdomaene"
* parameter[=].type = #string
* parameter[+].name = #policy
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #Coding
* parameter[=].binding.strength = #extensible
* parameter[=].binding.valueSet = "https://ths-greifswald.de/fhir/ValueSet/gics/Policy"
* parameter[+].name = #version
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #string
* parameter[+].name = #config
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Parameters
* parameter[=].targetProfile = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Parameters/Config"
* parameter[+].name = #consented
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].type = #boolean
