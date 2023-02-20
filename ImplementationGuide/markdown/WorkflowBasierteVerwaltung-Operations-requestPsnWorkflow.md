#### **{{link:RequestPsnWorkflow}}**

##### **Zweck**
Abfragen bzw. anlegen von Pseudonymen auf Basis eines vorkonfigurierten Pseudonymisierungsablaufs (Workflow) für einen gegebenen Geltungsbereich (Studie und Standort).

Dabei wird stets ein oder mehrere Originalwerte einer Quell-Domäne in ein oder mehrere Pseudonyme der Ziel-Domäne pseudonymisiert. Ist der Originalwert bereits bekannt, wird das bereits zuvor generierte Pseudonym der Ziel-Domäne geliefert. 

Diese Methode überführt Pseudonyme einer Stufe in eine andere Stufe. Dabei werden entweder bekannte Pseudonyme zurückgeliefert (Um-Pseudonymisierung) oder neue Pseudonyme generiert (Dritt-Pseudonymisierung).

Die Rückgabe der generierten standort- und studienspezifischen-Pseudonyme erfolgt als Params.

<p align="center">
  <img width="700" src="https://www.ths-greifswald.de/wp-content/uploads/2022/10/fhirgw-requestpsnworkflow.png">
</p>

##### **Voraussetzung**
- Die spezifizierte Studie muss im Zielsystem bekannt und angelegt sein.
- Die spezifizierte Quell-Domäne (source) muss im Zielsystem bekannt und angelegt sein.
- Die standortspezifische Domäne (target) muss im Zielsystem bekannt und angelegt sein.
- API-KEY: Der spezifizierte API-KEY muss valide und zum Aufruf der Methode autorisiert sein.
- Das angegebene Event muss bekannt sein und der API-KEY dafür autorisiert sein.

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
| original    | 1..*            |string|Liste studien- und standortspezifischer Originalwerte f&#252;r die entsprechende Pseudonyme ermittelt bzw. erstellt werden.|
| study       | 1..1            |string|Angabe der Studie|
| source      | 1..1            |string|Angabe der Quell-Domäne (Herkunft des Originalwertes)|
| target      | 1..1            |string|Angabe der Ziel-Domäne|
| apikey      | 1..1            |string|G&#252;ltiger API-KEY zur Authentifizierung und Authorisierung des aufrufenden Systems gegen&#252;ber dem verarbeitenden Workflow-Manager|
| event | 0..1            |string|Optionaler Parameter. Auszul&#246;sendes, vorkonfiguriertes Pseudonymisierungsevents innerhalb des Workflow-Managers.|

Im Erfolgsfall wird ein pseudonym-Parameter pro übergebenen Originalwert zurückgegeben, welcher folgende Parameter enthält:
1. original = der zu pseudonymisierende Wert (im Request übergeben)
2. target = die verwendete Ziel-Domäne (im Request übergeben)
3. pseudonym = Das in der Ziel-Domäne erzeugte Pseudonym.

Wenn einzelne übergebene Parameter fehlerhaft bzw. nicht valide sind, wird statt eines Pseudonyms ein Fehler-Parameter (error-Parameter) mit der Fehlerbeschreibung zurückgeliefert.

Ist der Request gänzlich ungültig, wird einer der folgenden HTTP Statuscodes in Verbindung mit einer OperationOutcome-Ressource zurückgegeben:
* 400: fehlende oder fehlerhafte Parameter
* 401: Fehlende Authentifizierung oder Autorisierung
* 404: Parameter mit unbekanntem Inhalt, z.B. unbekannte Studienangabe

##### **Beispiele**
Beispielhafter Request-Body (orientiert am Beispiel der fTTP-NUM Standort Use Cases):
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestPsnWorkflow-request-example-1.json}}

Eine beispielhafte Rückmeldung (orientiert am Beispiel der fTTP-NUM Standort Use Cases) kann wie folgt aussehen:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestPsnWorkflow-response-example-1.json}}

Beispielhafter Request-Body zur Anforderung von Drittpseudonymen (orientiert am Beispiel der Zentralen Plattform im Vorhaben NUM-RDP):
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestPsnWorkflow-request-example-2.json}}

Eine beispielhafte Rückmeldung (orientiert am Beispiel der Zentralen Plattform im Vorhaben NUM-RDP) kann wie folgt aussehen:
{{xml:Resources/fsh-generated/resources/Parameters-Parameters-RequestPsnWorkflow-response-example-2.json}}
