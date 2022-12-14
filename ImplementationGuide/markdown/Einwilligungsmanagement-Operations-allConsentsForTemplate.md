#### **{{link:AllConsentsForTemplate}}**

<p align="left">
  <img width="500" src="https://www.ths-greifswald.de/wp-content/uploads/2021/06/fhirgateway-gics.png">
</p>

##### **Voraussetzung**
- Spezifizierte Domäne muss angelegt sein
- Es muss eine gültige Einwilligung mit dem gegebenen personIdentifier existieren
- Das spezifizierte Template muss Grundlage einer gültigen Einwilligung sein

##### **Aufruf und Rückgabe**
{{render:AllConsentsForTemplate}}

##### **Beispiel**
Beispielhafter Request-Body:

{{xml:Resources/fsh-generated/resources/Parameters-AllConsentsForTemplate-request-example-1.json}}

Beispielhafte Rückmeldung:

{{xml:Resources/fsh-generated/resources/Bundle-AllConsentsForTemplate-response-example-1.json}}

##### **Error Codes**

| Beschreibung|HTTP Error Code|
--- | ---
|Fehlende Parameter|400 Bad Request|
|Parameter mit unbekanntem Inhalt|404 Not found|
|Leere Ergebnismenge trotz gültiger Parameter|200 Ok|
