![](https://www.ths-greifswald.de/wp-content/uploads/2019/01/Design-Logo-THS-deutsch-271-padding.png){: align="right" width="200px"} 
## Kontext und Konzept
<p align="center">
  <img width="500" src="https://www.ths-greifswald.de/wp-content/uploads/2022/10/fhirgw-concept.png">
</p>

### Keep it simple!
Das TTP-FHIR-Gateway stellt eine FHIR-Schnittstelle zum Aufruf ausgewählter Werkzeug-Funktionen von E-PIX, gPAS, gICS und Dispatcher in Form von FHIR-Ressourcen über entsprechende Suchaufrufe und FHIR-Operations bereit.

Dabei fungiert das TTP-FHIR Gateway ausschließlich als Übersetzer zwischen FHIR-Aufrufen des anfragenden Systems und den zugeordneten Funktionalitäten der einzelnen Werkzeuge. Dafür nötige Zugriffe werden innerhalb des Anwendungsservers per [JNDI](https://en.wikipedia.org/wiki/Java_Naming_and_Directory_Interface) realisiert. 

Das TTP-FHIR Gateway realisiert *keine Anwendungslogik*. Die  Auswertung der übermittelten FHIR-Inhalte obliegt entsprechend dem anfragenden System.

### Einsatz in unterschiedlichen Anwendungszenarien
Erfahrungsgemäß ist jedes Forschungsvorhaben individuell. So verhält es sich auch mit den Infrastrukturen. Das TTP-FHIR Gateway ist sowohl in Projekten, die "nur" gPAS, E-PIX oder gICS (bzw. eine Kombination der Tools) nutzen, anwendbar als auch in Projekten, die auf den Workflow-Manager (TTP-Dispatcher) setzen und somit nur indirekt mit den zugeordneten Tools kommunizieren.

### Integration in bestehende Infrastrukturen
Das TTP-FHIR Gateway ist eine eigenständige Softwarekomponente. Bestehende Anwendungsserver, die bereits TTP-Werkzeuge bereitstellen, werden einfach um ein weiteres Deployment ergänzt.

**Die aktuellen Releases der Werkzeuge umfassen bereits das TTP-FHIR Gateway standardmäßig.**