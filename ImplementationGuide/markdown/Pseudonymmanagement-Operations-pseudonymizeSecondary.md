#### pseudonymizeSecondary

Erzeugung einer spezifischen Anzahl von Pseudonymen in einem vorhandenen Pseudonymisierungskontext bei gleichzeitiger Zuordnung zum übermittelten Originalwert

##### **Voraussetzung**
- Der oder die erforderlichen Pseudonymisierungskontexte (target) wurden im Vorfeld bereits konfiguriert und sind vorhanden
- Die target-Domänen sind als "MultiPsn"-Domänen konfiguriert (mehrere Pseudonyme pro Originalwert innerhalb derselben Domäne gestattet)


##### **Aufruf und Rückgabe**
{{render:PseudonymizeSecondary}}

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

Je nach Werteangaben (target, count) erfolgt bei der Verarbeitung intern eine Gruppierung der angefragten Werte, um die Vorteile des Batch-Processing nutzen zu können.
Einheitliche count- und target-Angaben führen zu besserer Performance.

`<HOST>:<PORT>/ttp-fhir/fhir/gpas/$pseudonymize-secondary`

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.


##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-PseudonymizeSecondary-request-example-1.json}}

Eine beispielhafte Rückmeldung kann wie folgt aussehen:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-PseudonymizeSecondary-response-example-1.json}}

Eine beispielhafte Fehlermeldung (hier: unbekannte target-Angabe):
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-PseudonymizeSecondary-response-example-2.json}}
