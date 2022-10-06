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
{{xml:Resources/fsh-generated/resources/example-operation-currentConsentForPersonAndTemplate-request-1.xml}}

Beispielhafte Rückmeldung:
{{xml:Resources/fsh-generated/resources/example-consent-bundle.xml}}

##### **Error Codes**

| Beschreibung|HTTP Error Code|
--- | ---
|Fehlende Parameter|400 Bad Request|
|Parameter mit unbekanntem Inhalt|404 Not found|
|Leere Ergebnismenge trotz gültiger Parameter|200 Ok|