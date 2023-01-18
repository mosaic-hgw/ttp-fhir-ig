#### {{page-title}}

Fügt Einwilligungsinformationen für einen Patienten hinzu. Es darf sich um einen neuen Patienten handeln.

Zurückgegeben wird der errechnete strukturierte Consent.

##### **Voraussetzung**
- Spezifizierte Domäne muss angelegt sein
- In der Patient-Resource verwendete Angaben des Identifier.system müssen in Form von SignerIdTypes, wie z.B. 'Pseudonym','CaseId','StudyPsn' in der entsprechenden Domäne konfiguriert sein

##### **Aufruf und Rückgabe**
{{render:AddConsent}}

##### **Beispiel**
(Q2/2023)

##### **Error Codes**

| Beschreibung|HTTP Error Code|
--- | ---
|Fehlende Parameter|400 Bad Request|
|Parameter mit unbekanntem Inhalt|404 Not found|
|Objekt nicht verarbeitbar (hier: Patient.identifier.system)|422 Unprocessable Entity|
|Leere Ergebnismenge trotz gültiger Parameter|200 Ok|
