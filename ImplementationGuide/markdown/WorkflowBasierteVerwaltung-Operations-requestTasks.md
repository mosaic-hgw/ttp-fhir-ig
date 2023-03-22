#### **{{link:RequestTasks}}**

##### **Zweck**
Tasks sind Aufgaben, die ein Standort regelmäßig abruft
und abarbeitet. Dies umfasst beispielsweise die Auflösung eines Clearing-Prozesses,
wenn ein Privacy-Preserving Record Linkage zu einem uneindeutigem Ergebnis kam. Es
wird empfohlen, die Aufgaben regelmäßig (und mehrmals die Woche) abzurufen.
Andernfalls können uneindeutige Matches nicht aufgelöst werden und entsprechende
Pseudonyme nicht vergeben werden. Aufgaben können sein: Einen vorhergehenden
Request erneut senden, das Pseudonym nach einem Clearing-Prozess abrufen und am
Standort hinterlegen, Identifizierende Daten zu einem vorher gesendeten Bloomfilter
senden. Aufgaben haben ein Verfallsdatum. Werden diese nicht rechtzeitig abgearbeitet,
wird der auslösende Prozess abgebrochen (z.B. Clearing-Prozess).

<p align="center">
  <img width="700" src="https://www.ths-greifswald.de/wp-content/uploads/2023/02/fhirgw-requestTasks.png">
</p>

##### **Voraussetzung**
- Die spezifizierte Studie muss im Zielsystem bekannt und angelegt sein.
- Die standortspezifische Ziel-Domäne (target) muss im Zielsystem bekannt und angelegt sein.
- API-Key: Der spezifizierte API-Key muss valide und zum Aufruf der Methode autorisiert sein.

##### **Aufruf und Rückgabe**
Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/dispatcher/$requestTasks`

Der Funktionsaufruf liefert eine Parameters-Ressource bestehend aus multiplen Multi-Part-Parametern zurück.

### Invocations

`URL: [base]/$requestTasks`

This operation changes content

### Parameters (In)

 |**Name** | **Cardinality** | **Type** | **Documentation**                                                                                                                         |
|---|-----------------|---|-------------------------------------------------------------------------------------------------------------------------------------------|
|study| 1..1|string| Angabe der Studie                                                                                                                         |
 |target| 1..1|string| Angabe der Ziel-Domäne bzw. des abrufenden Standorts                                                                                                           |
 |apikey| 1..1|string| G&#252;ltiger API-Key zur Authentifizierung und Authorisierung des aufrufenden Systems gegen&#252;ber dem verarbeitenden Workflow-Manager |

### Return Values (Out)

|**Name** | **Cardinality** | **Type** | **Documentation**                                                                                                                         |
|---|-----------------|---|-------------------------------------------------------------------------------------------------------------------------------------------|
|dic_psn_available| 0..*||Pseudonym-Rückgabe aus einem Bloomfilter-Request.|
|dic_psn_available.expires| 0..1|instant|Ablaufdatum (danach ist die Information ungültig)|
|dic_psn_available.bloomfilter| 1..1|base64Binary|Bloomfilter|
|dic_psn_available.target| 1..1|Identifier|Target-Identifikator|
|dic_psn_available.pseudonym| 1..1|Identifier|Pseudonym|
|send_idat| 0..*||Pseudonym-Rückgabe aus einem Bloomfilter-Request.|
|send_idat.expires| 1..1|instant|Ablaufdatum (danach ist die Information ungültig)|
|send_idat.taskId| 1..1|id|Identifikator der Aufgabe, dient der Rückreferenzierung in der providePatientData Operation|
|send_idat.pseudonym| 0..1|Identifier|Pseudonym. Entweder Pseudonym oder Bloomfilter müssen enthalten sein.|
|send_idat.bloomfilter| 0..1|base64Binary|Bloomfilter. Entweder Pseudonym oder Bloomfilter müssen enthalten sein.|
|send_idat.element| 1..*|Coding|Vorgabe, welche Elemente in den IDAT von providePatientData enthalten sein sollen. Das Coding ist an das Value Set {{pagelink:ImplementationGuide/markdown/Terminologie-ValueSets-IdatElements.md}} gebunden.|
|repeat_request| 0..*||Anforderung einen Bloomfilter-Request zu wiederholen.|
|repeat_request.expires| 0..1|instant|Ablaufdatum (danach ist die Information ungültig)|
|repeat_request.study| 1..1|Identifier|Angabe der Studie|
|repeat_request.bloomfilter| 1..1|base64Binary|Bloomfilter|
|repeat_request.target| 1..1|Identifier|Angabe des Bloomfilter sendenden Standorts (Ziel-Domäne)|

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.

##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestTasks-request-example-1.json}}

Beispielhafte Rückmeldung:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestTasks-response-example-1.json}}
