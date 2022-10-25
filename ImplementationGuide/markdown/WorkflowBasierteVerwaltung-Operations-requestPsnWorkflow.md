#### **{{link:RequestPsnWorkflow}}**

##### **Zweck**
Abfragen bzw. anlegen von Pseudonymen auf Basis eines vorkonfigurierten Pseudonymisierungsablaufs (Workflow) für einen gegebenen Geltungsbereich (Studie und Standort). Rückgabe der generierten standort- und studienspezifischen-Pseudonyme als Params.

<p align="center">
  <img width="500" src="https://www.ths-greifswald.de/wp-content/uploads/2022/10/fhirgw-requestpsnworkflow.png">
</p>

##### **Voraussetzung**
- Die spezifizierte Studie muss im Zielsystem bekannt und angelegt sein.
- Die spezifizierte Quell-Domäne (source) muss im Zielsystem bekannt und angelegt sein.
- Die standortspezifische Domäne (target) muss im Zielsystem bekannt und angelegt sein.
- Der spezifizierte API-KEY muss valid sein und über die nötigen Rechte zum Aufruf der Funktion verfügen.
- Das optional spezifizierte Event muss im Workflow-Manager konfiguriert sein.

##### **Aufruf und Rückgabe**
Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/dispatcher/$requestPsnWorkflow`

Der Funktionsaufruf liefert eine Parameters-Ressource bestehend aus multiplen Multi-Part-Parametern zurück.

{{render:RequestPsnWorkflow}}

Im Erfolgsfall wird jeweils ein pseudonym-Parameter zurückgegeben mit folgenden Teilen:
1. original = der zu pseudonymisierende Werte (Teil des Requests)
2. target = die genutzte Pseudonymisierungsdomäne (Teil des Requests)
3. pseudonym = das fTTP-seitig erzeugte Pseudonym.

Im Einzel-Fehlerfall wird jeweils ein error-Parameter zurückgegeben, ebenfalls mit den Teilen original und target sowie einem error-code anstelle des Pseudonyms.

Im vollständigen Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: fehlende oder fehlerhafte Parameter

##### **Beispiel**
Beispielhafter Request-Body (orientiert am Beispiel der fTTP-NUM Standort Use Cases):
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestPsnWorkflow-request-example-1.json}}

Eine beispielhafte Rückmeldung (orientiert am Beispiel der fTTP-NUM Standort Use Cases) kann wie folgt aussehen:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestPsnWorkflow-response-example-1.json}}
