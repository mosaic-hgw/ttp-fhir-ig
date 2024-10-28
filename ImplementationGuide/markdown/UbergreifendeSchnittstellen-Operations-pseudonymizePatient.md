#### **{{link:PseudonymizePatient}}**

##### **Zweck**
//TODO

##### **Voraussetzung**
- API-Key: Der spezifizierte API-Key muss valide und zum Aufruf der Methode autorisiert sein.
//TODO

##### **Aufruf und Rückgabe**

{{render:PseudonymizePatient}}

//TODO SL weitere Hinweise

Im Kontext dieser Operation wird das folgende Patient-Profil verwendet:

{{tree:PatientPseudonymized}}

Im Fehlerfall wird eine OperationOutcome-Ressource mit entsprechenden Informationen zurückgegeben. Bei Verwendung innerhalb eines Batch-Bundles (siehe Beispiele) wird in der Batch-Response neben diesem OperationOutcome auch eine Parameters-Ressource zurückgegeben, die auf die betroffene PatientId sowie das Target verweist.

##### **Beispiel**
Beispielhafter Request-Body als Bundle:
{{xml:Resources/fsh-generated/resources/Bundle-PseudonymizePatient-Bundle-request-example-1.json}}

Beispielhafter Response-Body als Bundle:
{{xml:Resources/fsh-generated/resources/Bundle-PseudonymizePatient-Bundle-response-example-1.json}}
