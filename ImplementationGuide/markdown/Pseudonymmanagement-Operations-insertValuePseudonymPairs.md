#### insertValuePseudonymPairs

TODO

##### **Voraussetzung**
TODO

##### **Aufruf und Rückgabe**
{{render:InsertValuePseudonymPairs}}

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/gpas/$insert-value-pseudonym-pairs`

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.


##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-InsertValuePseudonymPairs-request-example-1.json}}

Eine beispielhafte Rückmeldung kann wie folgt aussehen:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-InsertValuePseudonymPairs-response-example-1.json}}

Auftretende Fehler (z.B. angegebenes Pseudonym ist unbekannt) werden im Einzelnen entsprechend per Coding vom Typ [Issue-Type](http://hl7.org/fhir/issue-type) signalisiert.

{{xml:Resources/fsh-generated/resources/Parameters-Parameters-InsertValuePseudonymPairs-response-example-2.json}}
