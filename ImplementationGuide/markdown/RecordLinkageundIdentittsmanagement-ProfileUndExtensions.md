---
topic: ImplementationGuide-markdown-RecordLinkageundIdentittsmanagement-ProfileUndExtensions
---
![](https://www.ths-greifswald.de/wp-content/uploads/2019/01/Design-Logo-THS-deutsch-271-padding.png){: align="right" width="200px"}

### Profile

| Bezeichnung|Zweck|
--- | ---
|{{pagelink:ImplementationGuide/markdown/RecordLinkageundIdentittsmanagement-ProfileUndExtensions-Person.md}}|Allgemeines Personen-Profil. Repräsentiert die reale Person (im Sinn eines MPI Eintrags), mit beliebig vielen Varianten/Schreibweisen. Letztere werden als Patienten-Identitäten abgebildet (=> Patient-Profil).|
|{{pagelink:ImplementationGuide/markdown/RecordLinkageundIdentittsmanagement-ProfileUndExtensions-Patient.md}}|Patienten-Identität (Variante/Schreibweise) einer realen Person.|

### Extensions

Die Extensions sind in eines oder mehrere der Profile bereits integriert, soweit sie jeweils relevant sind.

In der nachfolgenden Tabelle werden die im Rahmen dieses Leitfadens definierten Extensions erläutert. Ggf. weitere verwendete Extensions (z.B. FHIR Core-Extensions) sind [im FHIR-Standard](http://www.hl7.org/fhir/extensibility-registry.html) bzw. im jeweiligen Quell-Leitfaden dokumentiert.

| Bezeichnung|Struktur|Zweck|
--- | ---
|CustomIdatValues|{{render:CustomIdatValues}}|Maximal 10 Datenfelder zur freien Verwendung|
