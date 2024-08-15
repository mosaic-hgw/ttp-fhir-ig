#### {{page-title}}

**Unterstützt ab TTP-FHIR Gateway Version 2023.1.0**

Legt eine neue Einwilligung im gICS für ein spezifisches Forschungsvorhaben (Domain) auf Basis der übermittelten Informationen gemäß den Profil-Vorgaben der [HL7 Deutschland Arbeitsgruppe "Einwilligungsmanagement"](https://ig.fhir.de/einwilligungsmanagement/stable/) an:
- [Ausgefüllte Einwilligung](https://ig.fhir.de/einwilligungsmanagement/stable/QuestionnaireResponse.html)
- [Personenbezug](https://ig.fhir.de/einwilligungsmanagement/stable/Patient.html)
- [ggf. vorhandene Unterschriften von Patient, aufklärender Person, gesetzlichen Vertretern](https://ig.fhir.de/einwilligungsmanagement/stable/Provenance.html)
- [ggf. vorhandene Scans der Papiereinwilligung](https://simplifier.net/guide/einwilligungsmanagement/documentreference?version=current)

Zurückgegeben wird der auf dieser Basis errechnete strukturierte Consent im Bundle mit zugehörigen Ressourcen (z.B. zum Qualitätsstatus) gemäß der gICS-spezifischen Profilvorgaben.

##### **Voraussetzung**
- Spezifizierte Einwilligungsdomäne muss angelegt sein
- In der Patient-Resource verwendete Angaben des Identifier.system müssen in Form von SignerIdTypes, wie z.B. 'Pseudonym','CaseId','StudyPsn' in der entsprechenden Domäne im gICS konfiguriert sein
- übermittelte Ressourcen müssen untereinander konsistent referenziert werden.
- eventuell vorhandene IDs (UUIDs) werden während der Verarbeitung durch gICS-eigene UUIDs ersetzt.
- Aktuell werden nur deutschsprachige Einwilligungsvorlagen unterstützt

#### **Hinweise**
Nachfolgend werden Konkretisierungen in Bezug auf die Vorgaben der [HL7 Deutschland Arbeitsgruppe "Einwilligungsmanagement"](https://ig.fhir.de/einwilligungsmanagement/stable/) erläutert

| FHIR-Element                                                                   | Erklärung                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
|--------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| QuestionnaireResponse.questionnaire                                            | Bezug zur verwendeten Einwilligungsvorlage in der Form `https://ths-greifswald.de/fhir/gics/QuestionnaireComposed/<domain>/<templateName>                                                                                                                                                                                                                                                                                                                                                                                                                                   |<templateVersion|` wie zum Beispiel: `https://ths-greifswald.de/fhir/gics/QuestionnaireComposed/MII/Patienteneinwilligung+MII|1.6.d` Dabei muss der referenzierte TemplateType vom Typ Consent (LOINC 59284-0) sein.|
| QuestionnaireResponse.item.answer.value.valueCoding                            | Unterstützte Systeme zur Codierung der Antworten sind https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus sowie [urn:oid:2.16.840.1.113883.3.1937.777.24.5.2](https://art-decor.org/art-decor/decor-valuesets--mide-?id=2.16.840.1.113883.3.1937.777.24.11.30&effectiveDate=2021-03-23T23:45:09&language=de-DE)                                                                                                                                                                                                                                                    |
| QuestionnaireResponse.item.linkId                                              | Die `item.linkId` wird verwendet um den Bezug zum versionierten Einwilligungsmodul (z.B. Modul `KKDAT_prospektiv_uebertragen_speichern_nutzen` in der Version 1.8, *Verwendung von* **Pipe als Trenner** *ist verpflichtend*) oder zum eindeutig bezeichneten Freitextfeld einer Einwilligungsvorlage herzustellen. <br/><br/>**Beispiel item.linkId für versioniertes Einwilligungsmodul** <br/>`<linkId value="KKDAT_prospektiv_uebertragen_speichern_nutzen&#124;1.8"/>`<br/><br/>**Beispiel item.linkId für Freitextfeld** <br/>`<linkId value="freitextFeld1"/>`                 |
| Patient.idenfifier.system                                                      | Die Zuordnung der Einwilligung zu einem Patienten  erfolgt im gICS über SignerIds. Dazu wird das [Patient-Profil der HL7 AG Einwilligungsmanagement](https://ig.fhir.de/einwilligungsmanagement/stable/Patient.html) genutzt. Die **Art der SignerId (SIGNER_ID_TYPE)** wird innerhalb der Domain konfiguriert (z.B. "Pseudonym") und in `Patient.identifier.system` entsprechend der Vorgabe `<system value="https://ths-greifswald.de/fhir/gics/identifiers/[BEZEICHNER_SIGNER_ID_TYPE]>"/>` erwartet. Die **Angabe der SignerId** erfolgt per `Patient.identifier.value` |

##### **Aufruf und Rückgabe**
{{render:AddConsent}}

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Unbekannte Angaben in den Parametern
* 422: Fehlende oder falsche Patienten-Attribute.

##### **Beispiel**
Beispielhafter Request-Body:

Aufgrund von Darstellungsproblemen bei Simplifier, ist das Example derzeit nur als Link verfügbar: 

[https://simplifier.net/ths-greifswald/fsh-generated-resources-parameters-parameters-addconsent-request-example-1](https://simplifier.net/ths-greifswald/addconsent-request-example-1)

<!-- {{xml:Resources/fsh-generated/resources/Parameters-Parameters-AddConsent-request-example-1.json}} -->

Eine beispielhafte Rückmeldung:

Aufgrund von Darstellungsproblemen bei Simplifier, ist das Example derzeit nur als Link verfügbar: 

[https://simplifier.net/ths-greifswald/addconsent-response-example-1](https://simplifier.net/ths-greifswald/addconsent-response-example-1)
<!-- {{xml:Resources/fsh-generated/resources/Bundle-AddConsent-response-example-1.json}} -->
