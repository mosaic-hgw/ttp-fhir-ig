Instance: AddConsentOptOut
InstanceOf: OperationDefinition
Usage: #definition
* insert meta-instance
* language = #de-DE
* url = "https://ths-greifswald.de/fhir/OperationDefinition/gics/addConsentOptOut"
* name = "AddConsentOptOut"
* title = "Add a consent related QuestionnaireResponse for a patient in an opt-out context"
* kind = #operation
* description = "Erstellt die Einwilligungsinformationen in einem Opt-Out-Kontext für einen (ggf. neuen) Patienten, um auf dieser Basis eine neue Einwilligung im gICS zu erzeugen. Liefert Bundle vom Typ \"collection\". Das Bundle enthält die errechnete FHIR Consent-Resource."
* purpose = "Teil des FHIR Gateway für gICS. Weitere Infos unter https://ths-greifswald.de/gics"
* affectsState = true
* code = #addConsentOptOut
* comment = "Liefert alle Consente einer Person einer spezifischen Einwilligungsdomaene, die sich aus den übermittelten Informationen ergeben. Die Rückgabe erfolgt als Bundle vom Typ \"collection\"."
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
* parameter[+].name = #questionnaire
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Canonical URL des Questionnaire (entsprechend dem Profil http://fhir.de/ConsentManagement/StructureDefinition/QuestionnaireComposed), das im Rahmen eines Opt-Out-Kontexts implizit gilt."
* parameter[=].type = #canonical
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Bundle vom Typ collection, das die errechneten Consent-Ressourcen enthält."
* parameter[=].type = #Bundle


Instance: Parameters-AddConsentOptOut-request-example-1
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "patient"
  * resource
    * id = "1"
    * resourceType = "Patient"
    * identifier
      * type = $cs0203#ANON "Anonymous identifier"
      * value = "studypsn1"
      * system = "https://ths-greifswald.de/fhir/gics/identifiers/Pseudonym"
    * meta
      * lastUpdated = "2022-12-20T10:10:54.889+01:00"
      * profile = "http://fhir.de/ConsentManagement/StructureDefinition/Patient"
* parameter[+]
  * name = "domain"
  * valueString = "MII"
* parameter[+]
  * name = "questionnaire"
  * valueCanonical = "https://ths-greifswald.de/fhir/gics/QuestionnaireComposed/MII/Patienteneinwilligung+MII|1.6.f"


Instance: AddConsentOptOut-response-example-1
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[+].resource = 6d25073b-a7d7-44a3-bdf0-57449df2f46e

Instance: 6d25073b-a7d7-44a3-bdf0-57449df2f46e
InstanceOf: Consent
Usage: #inline
* meta.lastUpdated = "2023-02-28T16:59:47.654+01:00"
* meta.profile = "https://ths-greifswald.de/fhir/StructureDefinition/gics/Consent"
* extension.url = "http://fhir.de/ConsentManagement/StructureDefinition/DomainReference"
* extension.extension[0].url = "domain"
* extension.extension[=].valueReference = Reference(ResearchStudy/627163a2-ed92-41c7-91e3-0b134127b47b)
* extension.extension[+].url = "status"
* extension.extension[=].valueCoding = $publication-status#active
* status = #active
* scope = $consentscope#research
* category = $loinc#57016-8
* category[+] = $csResultType#consent-status
* patient = Reference(Patient/71e9be08-86ef-4403-9770-fbbfcdd3589c) "Pseudonym studypsn1"
* dateTime = "2022-12-21T00:00:00+01:00"
* organization.display = "MII"
* sourceReference = Reference(bd56b7e3-336c-49a6-aa31-1987b02f26cf)
* policyRule.text = "Patienteneinwilligung MII|1.6.d"
* provision.type = #deny
* provision.period.start = "2022-12-21T00:00:00+01:00"
* provision.period.end = "2052-12-21T00:00:00+01:00"
* provision.provision[0].type = #permit
* provision.provision[=].period.start = "2022-12-21T00:00:00+01:00"
* provision.provision[=].period.end = "2052-12-21T00:00:00+01:00"
* provision.provision[=].code[0] = $MII#IDAT_bereitstellen_EU_DSGVO_konform "Herausgabe identifizierender Daten (IDAT) an unabhängige Treuhandstelle zur weiteren Verarbeitung"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.5 "IDAT_bereitstellen_EU_DSGVO_NIVEAU"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-12-21T00:00:00+01:00"
* provision.provision[=].period.end = "2052-12-21T00:00:00+01:00"
* provision.provision[=].code[0] = $Policy#IDAT_erheben "Erfassung neuer identifizierender Daten (IDAT)"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.2 "IDAT_erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-12-21T00:00:00+01:00"
* provision.provision[=].period.end = "2052-12-21T00:00:00+01:00"
* provision.provision[=].code[0] = $Policy#IDAT_speichern_verarbeiten "Speicherung und Verarbeitung identifizierender Daten (IDAT) zu Zwecken med. Forschung in der verantwortlichen Stelle"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.3 "IDAT_speichern_verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-12-21T00:00:00+01:00"
* provision.provision[=].period.end = "2052-12-21T00:00:00+01:00"
* provision.provision[=].code[0] = $Policy#IDAT_zusammenfuehren_Dritte "Zusammenführung identifizierender Daten (IDAT) über die unabhängige Treuhandstelle mit Dritten Forschungspartnern, sofern dort eine Einwilligung vorliegt"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.4 "IDAT_zusammenfuehren_Dritte"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-12-21T00:00:00+01:00"
* provision.provision[=].period.end = "2027-12-21T00:00:00+01:00"
* provision.provision[=].code[0] = $Policy#MDAT_erheben "Erfassung medizinischer Daten (MDAT)"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.6 "MDAT_erheben"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-12-21T00:00:00+01:00"
* provision.provision[=].period.end = "2052-12-21T00:00:00+01:00"
* provision.provision[=].code[0] = $Policy#MDAT_speichern_verarbeiten "Speicherung und Verarbeitung von medizinischen codierten Daten zu Zwecken med. Forschung innerhalb der verantwortlichen Stelle (MDAT)"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.7 "MDAT_speichern_verarbeiten"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-12-21T00:00:00+01:00"
* provision.provision[=].period.end = "2052-12-21T00:00:00+01:00"
* provision.provision[=].code[0] = $MII#MDAT_wissenschaftlich_nutzen_EU_DSGVO_konform "Bereitstellung umcodierter medizinischer Daten (MDAT) für wissenschaftliche Nutzung zu Zwecken med. Forschung an externe Forscher"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.8 "MDAT_wissenschaftlich_nutzen_EU_DSGVO_NIVEAU"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-12-21T00:00:00+01:00"
* provision.provision[=].period.end = "2052-12-21T00:00:00+01:00"
* provision.provision[=].code[0] = $Policy#MDAT_zusammenfuehren_Dritte "Zusammenführung medizinischer Daten (MDAT) mit Dritten Forschungspartnern, sofern dort eine Einwilligung vorliegt"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.9 "MDAT_zusammenfuehren_Dritte"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-12-21T00:00:00+01:00"
* provision.provision[=].period.end = "2052-12-21T00:00:00+01:00"
* provision.provision[=].code[0] = $MII#Rekontaktierung_Ergebnisse_erheblicher_Bedeutung "Rekontaktierung des Betroffenen bei Ergebnissen von erheblicher Bedeutung"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.37 "Rekontaktierung_Ergebnisse_erheblicher_Bedeutung"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-12-21T00:00:00+01:00"
* provision.provision[=].period.end = "2052-12-21T00:00:00+01:00"
* provision.provision[=].code[0] = $Policy#Rekontaktierung_Verknuepfung_Datenbanken "Rekontaktierung zur Verknüpfung von Patientendaten mit Daten anderer Datenbanken"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.27 "Rekontaktierung_Verknuepfung_Datenbanken"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-12-21T00:00:00+01:00"
* provision.provision[=].period.end = "2052-12-21T00:00:00+01:00"
* provision.provision[=].code[0] = $Policy#Rekontaktierung_weitere_Erhebung "Rekontaktierung bezüglich Erhebung zusätzlicher Daten"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.28 "Rekontaktierung_weitere_Erhebung"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-12-21T00:00:00+01:00"
* provision.provision[=].period.end = "2052-12-21T00:00:00+01:00"
* provision.provision[=].code[0] = $Policy#Rekontaktierung_weitere_Studien "Rekontaktierung bezüglich Information zu neuen Forschungsvorhaben oder Studien"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.29 "Rekontaktierung_weitere_Studien"
* provision.provision[+].type = #permit
* provision.provision[=].period.start = "2022-12-21T00:00:00+01:00"
* provision.provision[=].period.end = "2052-12-21T00:00:00+01:00"
* provision.provision[=].code[0] = $MII#Rekontaktierung_Zusatzbefund "Rekontaktierung bezüglich Zusatzbefund im Rahmen der am Standort dafür entwickelten Prozesse und der im Nutzungsantrag angegebenen Bedingungen"
* provision.provision[=].code[+] = urn:oid:2.16.840.1.113883.3.1937.777.24.5.3#2.16.840.1.113883.3.1937.777.24.5.3.31 "Rekontaktierung_Zusatzbefund"
