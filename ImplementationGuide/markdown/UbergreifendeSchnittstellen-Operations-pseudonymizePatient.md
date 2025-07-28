#### **{{link:PseudonymizePatient}}**

##### **Zweck**

Durchführung eines Record Linkage auf Basis von (reduzierten) Patient-Ressourcen und Abfrage/Erzeugung von entsprechenden Pseudonymen.

Grundlage für das Record Linkage sind die in der Patienten-Ressource enthaltenen jedoch stark begrenzten Informationen. 
Dies können sowohl personenidentifizierende Informationen (u.a. Name, Vorname, Geburtsdatum, Kontakt- oder Adressinformationen) oder auch nur Identifier (u.a. KVID10, Bloomfilter) sein. 
Im Ergebnis wird System-intern eine eineindeutige Personenkennung (Master Person Index) erzeugt.
Anschließend werden entsprechend der gewünschten Anzahl Pseudonyme (Parameter _count_) erzeugt und in einem Ergebnis-Bundle zurückgegeben.
Die Zuordnung von eingehender Patienten-Ressource und Ergebnis-Pseudonym(en) erfolgt über die eingehende _Patient.id_.

##### **Voraussetzung**
- API-Key: Der spezifizierte API-Key muss valide und zum Aufruf der Methode autorisiert sein.
- Die Patient-Ressource muss den Profilvorgaben _PseudonymizePatient_ entsprechen.
- Die angegebene Pseudonym-Domäne muss konfiguriert sein.
- Im Fall von **count > 1**: Die angegebene Pseudonym-Domäne muss in der Lage sein mehre Pseudonyme für einen Originalwert zu verwalten (Multi-Psn-Domäne).
- Es wird nur der Bundle.Type **batch** unterstützt.

##### **Aufruf und Rückgabe**

{{render:PseudonymizePatient}}

Im Kontext dieser Operation wird das folgende Patient-Profil verwendet:

{{tree:PatientPseudonymized}}

Bei count = 0 wird nur lesend zugegriffen und werden keine Pseudonyme erzeugt. 
Bei count > 1 ist die Konfiguration von Multi-Psn-Domänen erforderlich. In diesem Fall kann die Rückgabe mehrere Parameter mit dem Bezeichner pseudonym enthalten.

Im Fehlerfall wird eine OperationOutcome-Ressource mit entsprechenden Informationen zurückgegeben. Bei Verwendung innerhalb eines Batch-Bundles (siehe Beispiele) wird in der Batch-Response neben diesem OperationOutcome auch eine Parameters-Ressource zurückgegeben, die auf die betroffene PatientId sowie das Target verweist.

##### **Beispiel**
Beispielhafter Request-Body als Bundle:
{{xml:Resources/fsh-generated/resources/Bundle-PseudonymizePatient-Bundle-request-example-1.json}}

Beispielhafter Response-Body als Bundle:
{{xml:Resources/fsh-generated/resources/Bundle-PseudonymizePatient-Bundle-response-example-1.json}}