#### {{page-title}}
**Unterstützt ab TTP-FHIR Gateway Version 2023.2.0**

##### **Zweck**
TODO

##### **Voraussetzung**
Die angegebenen Parameter zur Spezifikation der Matching-Domäne und der Datenquelle müssen im E-PIX konfiguriert sein.

##### **Aufruf und Rückgabe**
Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/epix/$mergePersons`

Der Funktionsaufruf liefert eine OperationOutcome-Ressource zurück.

{{render:MergePersons}}

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.


##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-MergePersons-request-example-1.json}}

Beispielhafte Response:
{{xml:Resources/fsh-generated/resources/OperationOutcome-OperationOutcome-MergePersons-response-example-1.json}}
