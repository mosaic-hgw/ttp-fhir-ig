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
- API-KEY: Der spezifizierte API-KEY muss valide und zum Aufruf der Methode autorisiert sein.

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
 |apikey| 1..1|string| G&#252;ltiger API-KEY zur Authentifizierung und Authorisierung des aufrufenden Systems gegen&#252;ber dem verarbeitenden Workflow-Manager |

Das Coding des Parameters send_idat.element ist an das Value Set {{pagelink:ImplementationGuide/markdown/Terminologie-ValueSets-IdatElements.md}} gebunden.

### Arten von Tasks
|**Task**|**Beschreibung**| **Ergebnis-Parameter**                                                                                                                                          |
|---|---|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|
|dic_psn_available|Die Task gibt an, dass nun nach einem abgeschlossenen Clearing-Prozess, zu einer zuvor übermittelten Person, ein Pseudonym vorliegt.| bloomfilter, target, pseudonym                                                                                                                                  |
|send_idat|Die Task gibt an, dass zu einer zuvor übermittelten Person für einen Clearing-Prozess die Übermittlung identifizierender Daten erforderlich ist.| taskId, requestedData aus dem Wertebereich von {{pagelink:ImplementationGuide/markdown/Terminologie-ValueSets-IdatElements.md}}, pseudonym **ODER** bloomfilter |
|repeat_request|Die Task fordert den Standort auf, einen zuvor durchgeführten Request zu wiederholen.| study, bloomfilter, target                                                                                                                                      |

Im Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.

##### **Beispiel**
Beispielhafter Request-Body:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestTasks-request-example-1.json}}

Beispielhafte Rückmeldung:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestTasks-response-example-1.json}}
