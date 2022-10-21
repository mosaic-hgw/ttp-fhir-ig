#### **{{link:CurrentConsentForPersonAndTemplate}}**

<p align="left">
  <img width="500" src="https://www.ths-greifswald.de/wp-content/uploads/2021/06/fhirgateway-gics.png">
</p>

##### **Voraussetzung**
- Spezifizierte Domäne muss angelegt sein
- Spezifiziertes Template muss angelegt sein
- Es muss eine gültige Einwilligung mit dem gegebenen personIdentfier auf Basis des spezifizierten Templates existieren

##### **Aufruf und Rückgabe**
{{render:CurrentConsentForPersonAndTemplate}}

##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-CurrentConsentForPersonAndTemplate-request-example-1.json}}

Beispielhafte Rückmeldung:
{{xml:Resources/fsh-generated/resources/Bundle-AllConsentsForDomain-response-example-1.json}}

##### **Error Codes**

| Beschreibung|HTTP Error Code|
--- | ---
|Fehlende Parameter|400 Bad Request|
|Parameter mit unbekanntem Inhalt|404 Not found|
|Leere Ergebnismenge trotz gültiger Parameter|200 Ok|
