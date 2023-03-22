#### dePseudonymize

##### **Suche von Originalwerten**
Abfrage **je eines** Originalwertes für **eine Liste von 1-n Pseudonymen** und eine spezifische Domäne.
##### **Voraussetzung**
Die angegebene Pseudonym-Domäne muss in gPAS konfiguriert und das angegebene Pseudonym in dieser Domäne bereits vorhanden sein.


##### **Aufruf und Rückgabe**
{{render:DePseudonymize}}

Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/gpas/$dePseudonymize`

Der Funktionsaufruf liefert ein ParameterSet bestehend aus multiplen benannten Parametern zurück:
1. target = die genutzte Ziel-Domäne (Teil des Requests)
2. pseudonym = das angefragte Pseudonym (Teil des Requests)
3. original = der ermittelte Originalwert

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 422: Fehlende oder falsche Patienten-Attribute.

##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-DePseudonymize-request-example-1.json}}

Eine beispielhafte Rückmeldung kann wie folgt aussehen:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-DePseudonymize-response-example-1.json}}

Auftretende Fehler (z.B. angegebenes Pseudonym ist unbekannt) werden im Einzelnen entsprechend per Coding vom Typ [Issue-Type](http://hl7.org/fhir/issue-type) signalisiert.
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-Pseudonymize-response-example-2.json}}
