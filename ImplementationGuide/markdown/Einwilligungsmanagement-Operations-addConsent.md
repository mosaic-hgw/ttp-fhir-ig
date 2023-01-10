#### {{page-title}}

Fügt Einwilligungsinformationen für einen Patienten hinzu. Es darf sich um einen neuen Patienten handeln.

Zurückgegeben wird der errechnete strukturierte Consent.

##### **Voraussetzung**
- Spezifizierte Domäne muss angelegt sein

##### **Aufruf und Rückgabe**
{{render:AddConsent}}

##### **Beispiel**
(Q3/2022)

##### **Error Codes**

| Beschreibung|HTTP Error Code|
--- | ---
|Fehlende Parameter|400 Bad Request|
|Parameter mit unbekanntem Inhalt|404 Not found|
|Objekt nicht verarbeitbar (hier: Patient.identifier.system)|422 Unprocessable Entity|
|Leere Ergebnismenge trotz gültiger Parameter|200 Ok|
