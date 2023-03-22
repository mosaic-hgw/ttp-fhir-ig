#### **{{link:IsConsented}}**

<p align="left">
  <img width="500" src="https://www.ths-greifswald.de/wp-content/uploads/2021/06/fhirgateway-gics.png">
</p>

##### **Voraussetzung**
- Spezifizierte Domäne muss angelegt sein
- Es muss eine gültige Einwilligung mit dem gegebenen personIdentifier existieren
- Die spezifizierte Policy muss innerhalb einer gültigen Einwilligung des Patienten referenziert werden
- Bei Nutzung alternativer PolicyCodeSysteme müssen nötige fhirPolicyCodes innerhalb von gICS per ExternalProperty der Policies definiert worden sein ([Beispiel](https://www.ths-greifswald.de/gics/templates/mii/1.6.f))

##### **Aufruf und Rückgabe**
{{render:IsConsented}}

Der Parameter config enthält eine verschachtelte Parameters-Ressource entsprechend dem Config-Profil:

{{tree:Config}}

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 422: Fehlende oder falsche Patienten-Attribute.


##### **Beispiel**
Beispiel für einen Request auf Basis des Codesystems {{link:https://ths-greifswald.de/fhir/CodeSystem/gics/Policy}}:
{{xml:Resources/fsh-generated/resources/Parameters-IsConsented-request-example-1.json}}

Beispiel für einen Request mit alternativem Codesystem:
{{xml:Resources/fsh-generated/resources/Parameters-IsConsented-request-example-2.json}}

Eine beispielhafte Rückmeldung kann wie folgt aussehen:
{{xml:Resources/fsh-generated/resources/Parameters-IsConsented-response-example-1.json}}
