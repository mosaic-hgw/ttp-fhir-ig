#### **{{link:GetAllConsentedIdsFor}}**
**Unterstützt ab TTP-FHIR Gateway Version 2.0.0**
<p align="left">
  <img width="500" src="https://www.ths-greifswald.de/wp-content/uploads/2021/06/fhirgateway-gics.png">
</p>

##### **Voraussetzung**

- Spezifizierte Domäne muss angelegt sein
- Es muss eine gültige Einwilligung mit dem gegebenen personIdentifierType existieren
- Die spezifizierte Policy muss innerhalb einer gültigen Einwilligung referenziert werden
- Bei Nutzung alternativer PolicyCodeSysteme müssen nötige fhirPolicyCodes innerhalb von gICS per ExternalProperty der Policies definiert worden sein ([Beispiel](https://www.ths-greifswald.de/gics/templates/mii/1.6.f))


##### **Aufruf und Rückgabe**
{{render:GetAllConsentedIdsFor}}

Der Parameter config enthält eine verschachtelte Parameters-Ressource entsprechend dem Config-Profil:

{{tree:Config}}

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 422: Fehlende oder falsche Patienten-Attribute.

##### **Beispiel**
Beispielhafter Request-Body:

{{xml:Resources/fsh-generated/resources/Parameters-GetAllConsentedIdsFor-request-example-1.json}}



Beispielhafte Rückmeldung:
{{xml:Resources/fsh-generated/resources/Parameters-GetAllConsentedIdsFor-response-example-1.json}}
