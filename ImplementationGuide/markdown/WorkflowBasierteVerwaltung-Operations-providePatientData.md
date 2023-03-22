#### **{{link:ProvidePatientData}}**

##### **Zweck**
Identifizierende Daten (IDAT) werden für einen Clearing-Prozess an
die fTTP übertragen. Die darin enthaltenen Attribute (z.B. Vorname, Nachname, usw.)
dienen für ein konventionelles Record Linkage und werden danach in der fTTP
unwiederbringlich gelöscht.

<p align="center">
  <img width="700" src="https://www.ths-greifswald.de/wp-content/uploads/2023/02/fhirgw-providePatientData.png">
</p>

##### **Voraussetzung**
- API-Key: Der spezifizierte API-Key muss valide und zum Aufruf der Methode autorisiert sein.
- Die übermittelten IDAT müssen valide sein.
- Die TaskId muss valide sein.
- Der Standort hat zuvor seine Tasks abgerufen (vgl. requestTasks) und eine Aufgabe "send-idat" zugewiesen bekommen haben.

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
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Patienten-Attribute.


##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-ProvidePatientData-request-example-1.json}}
