Instance: AddConsent
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* language = #de-DE
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gics/addConsent"
* name = "AddConsent"
* title = "Add a consent related QuestionnaireResponse for a patient"
* kind = #operation
* description = "Nimmt die Einwilligungsinformationen einschließlich Nebeninformationen (Unterschrift, Scan) für einen (ggf. neuen) Patienten entgegen, um auf dieser Basis eine neue Einwilligung im gICS zu erzeugen. Liefert Bundle vom Typ \"collection\". Das Bundle enthält die errechnete FHIR Consent-Resource,sowie alle für diesen spezifischen Consent relevanten Ressourcen (z.B. QuestionnaireComposed, QuestionnaireResponse, Provenance, Patient). "
* purpose = "Teil des FHIR Gateway für gICS. Weitere Infos unter https://ths-greifswald.de/gics"
* affectsState = true
* code = #addConsent
* comment = "Liefert alle Consente einer Person einer spezifischen Einwilligungsdomaene, die sich aus den übermittelten Informationen ergeben. Die Rückgabe erfolgt als Bundle vom Typ \"collection\". Das Bundle enthält je Consent einen BundleEntry, der alle für den spezifischen Consent relevanten Ressourcen (z.B. TemplateFrame, QuestionnaireComposed, QuestionnaireResponse, Provenance) enthält. Details zu den verwendeten Profilen unter https://simplifier.net/guide/einwilligungsmanagement/igeinwilligungsmanagement . Hinweis: gICS verwirft eventuell in den übermittelten Ressourcen gesetzte id-Werte und ersetzt sie durch eigene."
* system = true
* type = false
* instance = false
* parameter[0].name = #patient
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Patient-Ressource, entsprechend dem Profil http://fhir.de/ConsentManagement/StructureDefinition/Patient. Für Identifier in dieser Ressource muss der Namensraum (identifier.system) mit der Zeichenfolge 'https://ths-greifswald.de/fhir/gics/identifiers/' beginnen. Angehängt hieran wird der Bezeichner eines im System konfigurierten SignerIDTypes. Abweichungen hiervon führen zu einem Fehler, indiziert durch HTTP Status 422."
* parameter[=].type = #Patient
* parameter[+].name = #domain
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe der Einwilligungsdomaene"
* parameter[=].type = #string
* parameter[+].name = #questionnaireResponse
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "QuestionnaireResponse-Ressource zum Patienten, die sich auf ein entsprechendes QuestionnaireComposed bezieht. Entsprechend dem Profil http://fhir.de/ConsentManagement/StructureDefinition/QuestionnaireComposed."
* parameter[=].type = #QuestionnaireResponse
* parameter[+].name = #documentReference
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "unstrukturiertes Originaldokument (entsprechend dem Profil http://fhir.de/ConsentManagement/StructureDefinition/DocumentReference)"
* parameter[=].type = #DocumentReference
* parameter[+].name = #provenance
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Herkunftsinformationen (entsprechend dem Profil http://fhir.de/ConsentManagement/StructureDefinition/Provenance). Umsetzungshinweis: mehrere Unterschriften für ein Dokument sind ggf. als mehrere signature-Elemente in der selben Provenance-Ressource abzubilden."
* parameter[=].type = #Provenance
* parameter[+].name = #_profile
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "Angabe um Ausgabeprofil festzulegen.\r\nDefault ist die gics-Variante; alternativ das Profil aus dem IG Einwilligungsmanagement."
* parameter[=].type = #canonical
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Bundle vom Typ collection, das die errechneten Consent-Ressourcen enthält."
* parameter[=].type = #Bundle
