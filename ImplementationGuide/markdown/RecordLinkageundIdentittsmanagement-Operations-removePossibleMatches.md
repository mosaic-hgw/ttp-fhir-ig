#### {{page-title}}

##### **Zweck**
Entfernt Matches aus einer Domäne.

##### **Voraussetzung**
Der angegebene Parameter zur Spezifikation der Matching-Domäne muss im E-PIX konfiguriert sein.

##### **Aufruf und Rückgabe**
Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/epix/$removePossibleMatches`

Der Funktionsaufruf liefert eine Parameters-Ressource TODO zurück.

{{render:RemovePossibleMatches}}

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:

* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.


##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RemovePossibleMatches-request-example-1.json}}

Beispielhafte Response:
{{xml:Resources/fsh-generated/resources/OperationDefinition-OperationDefinition-RemovePossibleMatches-response-example-1.json}}
