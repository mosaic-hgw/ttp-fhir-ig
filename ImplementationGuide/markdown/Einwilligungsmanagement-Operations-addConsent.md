#### {{page-title}}

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
Nachfolgend werden Konkretisierungen in Bezug auf die Vorgaben der [HL7 Deutschland Arbeitsgruppe "Einwilligungsmanagement"](https://ig.fhir.de/einwilligungsmanagement/stable/) erlätuert

| FHIR-Element                                                                   | Erklärung                                                                                                                                                                            |
|--------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| QuestionnaireResponse.questionnaire                                            | Bezug zur verwendeten Einwilligungsvorlage in der Form `https://ths-greifswald.de/fhir/gics/QuestionnaireComposed/<domain>/<templateName>                                            |<templateVersion|` wie zum Beispiel: `https://ths-greifswald.de/fhir/gics/QuestionnaireComposed/MII/Patienteneinwilligung+MII|1.6.d` Dabei muss der referenzierte TemplateType vom Typ Consent (LOINC 59284-0) sein.|
| QuestionnaireResponse.item.answer.value.valueCoding                            | Unterstützte Systeme zur Codierung der Antworten sind https://ths-greifswald.de/fhir/CodeSystem/gics/ConsentStatus sowie [urn:oid:2.16.840.1.113883.3.1937.777.24.5.2](https://art-decor.org/art-decor/decor-valuesets--mide-?id=2.16.840.1.113883.3.1937.777.24.11.30&effectiveDate=2021-03-23T23:45:09&language=de-DE)|
| TODO LINKID bei Modulbezeichnern e.g.PATDAT_erheben_speichern_nutzen <PIPE>1.8 ||
| TODO LINKID bei Freitextfeldern                                                ||
| Vorgabe <SYSTEM>/identifiers/<signerIdType>                                    ||

##### **Aufruf und Rückgabe**
{{render:AddConsent}}
                
TODO Meldung der Rückgabe anpassen

##### **Beispiel**
Beispielhafter Request-Body:

TODO @SL

{{xml:Resources/fsh-generated/resources/<filename>.json}}

Eine beispielhafte Rückmeldung:

TODO @SL

{{xml:Resources/fsh-generated/resources/<filename>.json}}

##### **Error Codes**

| Beschreibung|HTTP Error Code|
--- | ---
|Fehlende Parameter|400 Bad Request|
|Parameter mit unbekanntem Inhalt|404 Not found|
|Objekt nicht verarbeitbar |422 Unprocessable Entity|
