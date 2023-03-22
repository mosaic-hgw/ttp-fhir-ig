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

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 422: Fehlende oder falsche Patienten-Attribute.

##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-CurrentConsentForPersonAndTemplate-request-example-1.json}}

Beispielhafte Rückmeldung:
{{xml:Resources/fsh-generated/resources/Bundle-AllConsentsForDomain-response-example-1.json}}
