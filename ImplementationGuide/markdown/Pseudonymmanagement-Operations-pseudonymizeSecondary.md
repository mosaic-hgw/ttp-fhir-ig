#### pseudonymizeSecondary

Erzeugung einer spezifischen Anzahl von Pseudonymen in einem vorhandenen Pseudonymisierungskontext bei gleichzeitiger Zuordnung zum übermittelten Originalwert

##### **Voraussetzung**
Der erforderliche Pseudonymisierungskontext (target) wurde im Vorfeld bereits konfiguriert und ist vorhanden

##### **Aufruf und Rückgabe**
{{render:PseudonymizeSecondary}}

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/gpas/$pseudonymize-secondary`

Der Funktionsaufruf liefert ein ParameterSet bestehend aus multiplen benannten Parametern zurück:
1. target = die genutzte Ziel-Domäne (Teil des Requests)
2. original = der zu pseudonymisierende Werte (Teil des Requests)
3. secondarypseudonym = die erzeugten Sekundärpseudonyme.

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.


##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-PseudonymizeSecondary-request-example-1.json}}

Eine beispielhafte Rückmeldung kann wie folgt aussehen:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-PseudonymizeSecondary-response-example-1.json}}
