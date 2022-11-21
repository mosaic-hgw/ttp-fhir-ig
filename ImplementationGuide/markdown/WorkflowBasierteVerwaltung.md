![](https://www.ths-greifswald.de/wp-content/uploads/2019/01/Design-Logo-THS-deutsch-271-padding.png){: align="right" width="200px"}
## Workflow-basierte Verwaltung

Der FHIR-Endpunkt ([base]) für die Workflow-basierte Verwaltung lautet

<strong>```http[s]://\<host\>:\<port\>/ttp-fhir/fhir/dispatcher```</strong>

### Übersicht der fTTP-Operations

Nachfolgende Tabelle listet die zum aktuellen Zeitpunkt gültigen **fTTP**-Funktionalitäten ([federated Trusted Third Party](https://www.ths-greifswald.de/forscher/num/fttp-fact-sheet)) des REST-basierten TTP-FHIR Gateway.

| Operation|erforderlich für fTTP-Modul|
-- | ---
|{{pagelink:ImplementationGuide/markdown/WorkflowBasierteVerwaltung-Operations-requestPsnWorkflow.md}}|Wahrscheinlichkeit|
|{{pagelink:ImplementationGuide/markdown/WorkflowBasierteVerwaltung-Operations-requestPsnFromBfWorkflow.md}}|Wahrscheinlichkeit|
|{{pagelink:ImplementationGuide/markdown/WorkflowBasierteVerwaltung-Operations-requestTasks.md}}|Clearing|
|{{pagelink:ImplementationGuide/markdown/WorkflowBasierteVerwaltung-Operations-providePatientData.md}}|Clearing|
