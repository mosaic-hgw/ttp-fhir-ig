#### **{{link:RequestPsnFromBfWorkflow}}**

##### **Zweck**
Anlegen und Matching von Patienten rein auf Basis von Bloomfiltern (PPRL) für einen gegebenen Geltungsbereich (Studie und Standort). Rückgabe der generierten Pseudonyme (z.b. DIC-PSN(s)) als Parameter.

<p align="center">
  <img width="700" src="https://www.ths-greifswald.de/wp-content/uploads/2022/10/fhirgw-requestpsnbfworkflow.png">
</p>

##### **Voraussetzung**
- Die spezifizierte Studie muss im Zielsystem bekannt und angelegt sein.
- Die übermittelten Bloomfilter müssen valide sein.
- Der spezifizierte API-Key muss valide sein und über die nötigen Rechte zum Aufruf der Funktion verfügen.
- Die standortspezifische Domäne (target) muss im Zielsystem bekannt und angelegt sein.

##### **Aufruf und Rückgabe**
Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/dispatcher/$requestPsnFromBfWorkflow`

Der Funktionsaufruf liefert eine Parameters-Ressource bestehend aus multiplen Multi-Part-Parametern zurück.

### Invocations

`URL: [base]/$requestPsnFromBfWorkflow`

This operation changes content

### Parameters (In)

|**Name** | **Cardinality** | **Type** |**Documentation**|
|---|-----------------|---|---|
|study| 1..1            |string|Angabe der Studie|
|bloomfilter| 1..*          |base64Binary|Liste studien- und standortspezifischer Bloomfilter (base64-codiert)|
|target| 1..1            |string|Angabe des Bloomfilter sendenden Standorts (Ziel-Dom&#228;ne)|
|apikey| 1..1            |string|G&#252;ltiger API-Key zur Authentifizierung und Authorisierung des aufrufenden Systems gegen&#252;ber dem verarbeitenden Workflow-Manager|

### Return Values (Out)

|**Name** | **Cardinality** | **Type** | **Documentation**                                                                                                                         |
|---|-----------------|---|-------------------------------------------------------------------------------------------------------------------------------------------|
|pseudonym-bf|0..*||Ermitteltes bzw. generiertes studien- und standort-spezifisches Pseudonym|
|pseudonym-bf.bloomfilter|1..1|base64Binary|Bloomfilter|
|pseudonym-bf.target|1..1|Identifier|die verwendete Ziel-Domäne (im Request übergeben)|
|pseudonym-bf.pseudonym|1..1|Identifier|das in der Ziel-Domäne erzeugte Pseudonym.|
|error|0..*||Fehlerrückgabe bei Teil-Fehlern|
|error.bloomfilter|0..1|base64Binary|Bloomfilter|
|error.target|0..1|Identifier|die verwendete Ziel-Domäne (im Request übergeben)|
|error.error-code|1..1|Coding|Fehlercode|

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Wenn einzelne übergebene Parameter fehlerhaft bzw. nicht valide sind, wird statt eines Pseudonyms ein Fehler-Parameter (error-Parameter) mit der Fehlerbeschreibung zurückgeliefert.

Ist der Request gänzlich ungültig, wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: fehlende oder fehlerhafte Parameter
* 401: Fehlende Authentifizierung oder Autorisierung

##### **Beispiel**
Beispielhafter Request-Body (orientiert am Beispiel der fTTP-NUM Use Cases):
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestPsnFromBfWorkflow-request-example-1.json}}

Eine beispielhafte Rückmeldung (orientiert am Beispiel der fTTP-NUM Use Cases) kann wie folgt aussehen:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestPsnFromBfWorkflow-response-example-1.json}}
