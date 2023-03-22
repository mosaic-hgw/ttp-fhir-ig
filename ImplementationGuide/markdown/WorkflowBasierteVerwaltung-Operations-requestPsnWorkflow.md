#### **{{link:RequestPsnWorkflow}}**

##### **Zweck**
Abfragen bzw. Anlegen von Pseudonymen auf Basis eines vorkonfigurierten Pseudonymisierungsablaufs (Workflow) für einen gegebenen Geltungsbereich (Studie und Standort).

Dabei wird stets ein oder mehrere Originalwerte einer Quell-Domäne in ein oder mehrere Pseudonyme der Ziel-Domäne pseudonymisiert. Ist der Originalwert bereits bekannt, wird das bereits zuvor generierte Pseudonym der Ziel-Domäne geliefert.

Diese Methode überführt Pseudonyme einer Stufe in eine andere Stufe. Dabei werden entweder bekannte Pseudonyme zurückgeliefert (Um-Pseudonymisierung) oder neue Pseudonyme generiert (Dritt-Pseudonymisierung).

Die Rückgabe der generierten standort- und studienspezifischen Pseudonyme erfolgt als Parameter.

<p align="center">
  <img width="700" src="https://www.ths-greifswald.de/wp-content/uploads/2022/10/fhirgw-requestpsnworkflow.png">
</p>

##### **Voraussetzung**
- Die spezifizierte Studie muss im Zielsystem bekannt und angelegt sein.
- Die spezifizierte Quell-Domäne (source) muss im Zielsystem bekannt und angelegt sein.
- Die standortspezifische Domäne (target) muss im Zielsystem bekannt und angelegt sein.
- API-Key: Der spezifizierte API-Key muss valide und zum Aufruf der Methode autorisiert sein.
- Das angegebene Event muss bekannt sein und der API-Key dafür autorisiert sein.

##### **Aufruf und Rückgabe**
Die bereitgestellte Funktionalität kann per POST-Request aufgerufen werden. Die erforderlichen Angaben werden per POST-BODY in Form von [FHIR Parameters](https://www.hl7.org/fhir/parameters.html) übermittelt.

`<HOST>:<PORT>/ttp-fhir/fhir/dispatcher/$requestPsnWorkflow`

Der Funktionsaufruf liefert eine Parameters-Ressource bestehend aus multiplen Multi-Part-Parametern zurück.

### Invocations

`URL: [base]/$requestPsnWorkflow`

This operation changes content

### Parameters (In)

| **Name**    | **Cardinality** | **Type** |**Documentation**|
|-------------|-----------------|---|---|
| original    | 1..*            |string|Liste studien- und standortspezifischer Originalwerte, f&#252;r die entsprechende Pseudonyme ermittelt bzw. erstellt werden.|
| study       | 1..1            |string|Angabe der Studie|
| source      | 1..1            |string|Angabe der Quell-Domäne (Herkunft des Originalwertes)|
| target      | 1..1            |string|Angabe der Ziel-Domäne|
| apikey      | 1..1            |string|G&#252;ltiger API-Key zur Authentifizierung und Authorisierung des aufrufenden Systems gegen&#252;ber dem verarbeitenden Workflow-Manager|
| event | 0..1            |string|Optionaler Parameter. Auszul&#246;sendes, vorkonfiguriertes Pseudonymisierungsevents innerhalb des Workflow-Managers.|

### Return Values (Out)

|**Name** | **Cardinality** | **Type** | **Documentation**                                                                                                                         |
|---|-----------------|---|-------------------------------------------------------------------------------------------------------------------------------------------|
|pseudonym|0..*||Ermitteltes bzw. generiertes studien- und standort-spezifisches Pseudonym|
|pseudonym.original|1..1|Identifier|der zu pseudonymisierende Wert (im Request übergeben)|
|pseudonym.target|1..1|Identifier|die verwendete Ziel-Domäne (im Request übergeben)|
|pseudonym.pseudonym|1..1|Identifier|das in der Ziel-Domäne erzeugte Pseudonym.|
|error|0..*||Fehlerrückgabe bei Teil-Fehlern|
|error.original|0..1|Identifier|der zu pseudonymisierende Wert (im Request übergeben)|
|error.target|0..1|Identifier|die verwendete Ziel-Domäne (im Request übergeben)|
|error.error-code|1..1|Coding|Fehlercode|

Im Erfolgsfall wird ein pseudonym-Parameter pro übergebenen Originalwert zurückgegeben, welcher folgende Parameter enthält:
1. original = der zu pseudonymisierende Wert (im Request übergeben)
2. target = die verwendete Ziel-Domäne (im Request übergeben)
3. pseudonym = Das in der Ziel-Domäne erzeugte Pseudonym.

Im Erfolgsfall wird der HTTP Statuscode 200 zurückgegeben.

Wenn einzelne übergebene Parameter fehlerhaft bzw. nicht valide sind, wird statt eines Pseudonyms ein Fehler-Parameter (error-Parameter) mit der Fehlerbeschreibung zurückgeliefert.

Ist der Request gänzlich ungültig, wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: Fehlende oder fehlerhafte Parameter.
* 401: Fehlende Authentifizierung oder Autorisierung.
* 404: Parameter mit unbekanntem Inhalt.
* 422: Fehlende oder falsche Patienten-Attribute.



##### **Beispiele**
Beispielhafter Request-Body (orientiert am Beispiel der fTTP-NUM Standort Use Cases):
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestPsnWorkflow-request-example-1.json}}

Eine beispielhafte Rückmeldung (orientiert am Beispiel der fTTP-NUM Standort Use Cases) kann wie folgt aussehen:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestPsnWorkflow-response-example-1.json}}

Beispielhafter Request-Body zur Anforderung von Drittpseudonymen (orientiert am Beispiel der Zentralen Plattform im Vorhaben NUM-RDP):
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestPsnWorkflow-request-example-2.json}}

Eine beispielhafte Rückmeldung (orientiert am Beispiel der Zentralen Plattform im Vorhaben NUM-RDP) kann wie folgt aussehen:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestPsnWorkflow-response-example-2.json}}
