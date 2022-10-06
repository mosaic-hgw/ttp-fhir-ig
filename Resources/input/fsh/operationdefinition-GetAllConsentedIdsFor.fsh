Instance: GetAllConsentedIdsFor
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* language = #de-DE
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gics/getAllConsentedIdsFor"
* name = "GetAllConsentedIdsFor"
* title = "Get all consented Identifiers for person and template"
* kind = #operation
* description = "Abruf aller Identifier eines bestimmten benannten Identifier-Typs (z.b. studyPsn) für eine bestimmte Policy (Coding) und Domäne. Zurück geliefert wird eine Liste von eingewilligten Identifiern in Bezug auf die spezifizierte Policy."
* purpose = "Teil des FHIR Gateway für gICS. Weitere Infos unter https://ths-greifswald.de/gics"
* affectsState = false
* code = #getAllConsentedIdsFor
* comment = "Abruf aller Identifier eines bestimmten benannten Identifier-Typs (z.b. studyPsn) für eine bestimmte Policy (Coding) und Domäne. Zurück geliefert wird eine Liste von eingewilligten Identifiern in Bezug auf die spezifizierte Policy."
* system = true
* type = false
* instance = false
* parameter[0].name = #domain
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Einwilligungsdomaene"
* parameter[=].type = #string
* parameter[+].name = #signerIdTypeName
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe des Signer-ID-Typs"
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
* parameter[=].documentation = "Version der Policy"
* parameter[=].type = #string
* parameter[+].name = #config
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].type = #Parameters
* parameter[+].name = #personIdentifier
* parameter[=].use = #out
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].type = #Identifier
