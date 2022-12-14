#### **{{link:ProvidePatientData}}**

##### **Zweck**
Ein Standort liefert an die fTTP die angeforderten Patientendaten. Der Standort hat zuvor seine Tasks abgerufen (vgl. {{pagelink:ImplementationGuide/markdown/WorkflowBasierteVerwaltung-Operations-requestTasks.md}}) und eine Aufgabe "send-idat" zugewiesen bekommen.

##### **Voraussetzung**
- Der spezifizierte API-KEY muss valide sein und über die nötigen Rechte zum Aufruf der Funktion verfügen.
- Die übermittelten IDAT müssen valide sein
- Die TaskId muss valide sein

##### **Aufruf und Rückgabe**
Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/dispatcher/$providePatientData`

Der Funktionsaufruf liefert eine Parameters-Ressource bestehend aus multiplen Multi-Part-Parametern zurück.

{{render:ProvidePatientData}}

Der Parameter "patient" enthält eine Patient-Ressource entsprechend dem IDAT-Profil:

{{tree:Idat}}

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:

* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 422: Fehlende oder falsche IDAT-Attribute.


##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-ProvidePatientData-request-example-1.json}}
