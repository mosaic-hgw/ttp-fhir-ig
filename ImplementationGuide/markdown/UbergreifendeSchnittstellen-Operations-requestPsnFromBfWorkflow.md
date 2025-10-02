#### **{{link:RequestPsnFromBfWorkflow}}**

##### **Zweck**
Anlegen und Matching von Patienten rein auf Basis von Bloomfiltern (PPRL) für einen gegebenen Geltungsbereich (Studie und Standort). Rückgabe der generierten Pseudonyme (z.b. DIC-PSN(s)) als Parameter.

<p align="center">
  <img width="700" src="https://www.ths-greifswald.de/wp-content/uploads/2022/10/fhirgw-requestpsnbfworkflow.png">
</p>

##### **Voraussetzung**
- API-Key: Der spezifizierte API-Key muss valide und zum Aufruf der Methode autorisiert sein. Der API-KEY wird im Request-Header übermittelt.
- Die spezifizierte Studie muss im Zielsystem bekannt und angelegt sein.
- Die übermittelten Bloomfilter müssen valide sein.
- Die standortspezifische Domäne (target) muss im Zielsystem bekannt und angelegt sein.

##### **Aufruf und Rückgabe**
Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/dispatcher/$requestPsnFromBfWorkflow`

Der Funktionsaufruf liefert eine Parameters-Ressource bestehend aus multiplen Multi-Part-Parametern zurück.

{{render:RequestPsnFromBfWorkflow}}

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Wenn einzelne übergebene Parameter fehlerhaft bzw. nicht valide sind, wird statt eines Pseudonyms ein Fehler-Parameter (error-Parameter) mit der Fehlerbeschreibung zurückgeliefert.

Ist der Request gänzlich ungültig, wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Patienten-Attribute.

##### **Hinweis zu zukünftigen Änderungen**
Das Pseudonym wird künftig nur dann geliefert, wenn kein Clearing-Prozess angestoßen wird. Ist dieser erforderlich, muss dieser zunächst vollständig abgeschlossen sein und das Pseudonym kann über {{pagelink:ImplementationGuide/markdown/WorkflowBasierteVerwaltung-Operations-requestTasks.md}} abgerufen werden.

##### **Beispiel**
Beispielhafter Request-Body (orientiert am Beispiel der fTTP-NUM Use Cases):
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestPsnFromBfWorkflow-request-example-1.json}}

Eine beispielhafte Rückmeldung (orientiert am Beispiel der fTTP-NUM Use Cases) kann wie folgt aussehen:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestPsnFromBfWorkflow-response-example-1.json}}
