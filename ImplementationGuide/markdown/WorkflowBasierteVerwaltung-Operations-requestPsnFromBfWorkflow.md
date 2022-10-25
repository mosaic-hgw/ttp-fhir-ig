#### **{{link:RequestPsnFromBfWorkflow}}**

##### **Zweck**
Anlegen und Matching von Patienten rein auf Basis von Bloomfiltern (PPRL) für einen gegebenen Geltungsbereich (Studie und Standort). Sofern noch nicht vorhanden, wird eine valide Ziel-Domäne automatisch angelegt. Rückgabe der generierten Pseudonyme (z.b. DIC-PSN(s)) als Params.

<p align="center">
  <img width="700" src="https://www.ths-greifswald.de/wp-content/uploads/2022/10/fhirgw-requestpsnbfworkflow.png">
</p>

##### **Voraussetzung**
- Die spezifizierte Studie muss im Zielsystem bekannt und angelegt sein.
- Die übermittelten Bloomfilter müssen valide sein.
- Der spezifizierte API-KEY muss valide sein und über die nötigen Rechte zum Aufruf der Funktion verfügen.
- Die standortspezifische Domäne (target) muss im Zielsystem bekannt und angelegt sein.

##### **Aufruf und Rückgabe**
Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/dispatcher/$requestPsnFromBfWorkflow`

Der Funktionsaufruf liefert eine Parameters-Ressource bestehend aus multiplen Multi-Part-Parametern zurück.

{{render:RequestPsnFromBfWorkflow}}

Im Erfolgsfall wird jeweils ein pseudonym-bf-Parameter zurückgegeben mit folgenden Teilen:
1. bloomfilter = der zu für PPRL erforderliche Bloomfilter (Teil des Requests)
2. target = die (erzeugte und) verwendete Pseudonymisierungsdomäne
3. pseudonym = das fTTP-seitig erzeugte Pseudonym.

Im Einzel-Fehlerfall wird jeweils ein error-Parameter zurückgegeben, ebenfalls mit den Teilen bloomfilter und target sowie einem error-code anstelle des Pseudonyms.

Im vollständigen Fehlerfall wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: fehlende oder fehlerhafte Parameter

##### **Beispiel**
Beispielhafter Request-Body (orientiert am Beispiel der fTTP-NUM Use Cases):
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestPsnFromBfWorkflow-request-example-1.json}}

Eine beispielhafte Rückmeldung (orientiert am Beispiel der fTTP-NUM Use Cases) kann wie folgt aussehen:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestPsnFromBfWorkflow-response-example-1.json}}
