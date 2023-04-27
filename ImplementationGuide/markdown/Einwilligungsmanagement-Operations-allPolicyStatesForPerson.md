#### **{{link:AllPolicyStatesForPerson}}**
**Unterstützt ab TTP-FHIR Gateway Version 2.1.0**
##### **Voraussetzung**
- Spezifizierte Domäne muss angelegt sein
- Es muss eine gültige Einwilligung mit dem gegebenen personIdentifier existieren
- **Unterstützt ab TTP FHIR Gateway Version 2.1.0 (gICS 2.13.4)**

##### **Aufruf und Rückgabe**
{{render:AllPolicyStatesForPerson}}

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 422: Fehlende oder falsche Patienten-Attribute.

##### **Beispiel**
Beispielhafter Request-Body:

{{xml:Resources/fsh-generated/resources/Parameters-AllPolicyStatesForPerson-request-example-1.json}}

Beispielhafte Rückmeldung:

{{xml:Resources/fsh-generated/resources/Bundle-AllPolicyStatesForPerson-response-example-1.json}}
