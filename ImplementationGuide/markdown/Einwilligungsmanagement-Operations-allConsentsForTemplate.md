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

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 422: Fehlende oder falsche Patienten-Attribute.

##### **Beispiel**
Beispielhafter Request-Body:

{{xml:Resources/fsh-generated/resources/Parameters-AllConsentsForTemplate-request-example-1.json}}

Beispielhafte Rückmeldung:

{{xml:Resources/fsh-generated/resources/Bundle-AllConsentsForTemplate-response-example-1.json}}
