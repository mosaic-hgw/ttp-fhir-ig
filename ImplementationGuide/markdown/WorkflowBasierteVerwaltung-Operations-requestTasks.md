#### **{{link:RequestTasks}}**

##### **Zweck**
Ein Standort kann seine offenen Aufgaben abrufen.

##### **Voraussetzung**
- Die spezifizierte Studie muss im Zielsystem bekannt und angelegt sein.
- Die standortspezifische Domäne (target) muss im Zielsystem bekannt und angelegt sein.
- Der spezifizierte API-KEY muss valide sein und über die nötigen Rechte zum Aufruf der Funktion verfügen.

##### **Aufruf und Rückgabe**
Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/dispatcher/$requestTasks`

Der Funktionsaufruf liefert eine Parameters-Ressource bestehend aus multiplen Multi-Part-Parametern zurück.

{{render:RequestTasks}}

Das Coding des Parameters send_idat.element ist an das Value Set {{pagelink:IGTTPFHIRGateway/Terminologie/Terminologie-ValueSets/Terminologie-ValueSets-IdatElements.page.md}} gebunden.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.

##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestTasks-request-example-1.json}}

Beispielhafte Rückmeldung:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestTasks-response-example-1.json}}
