# CD-9750 — property extraction replication (staging)

Reproduces https://autorabit.atlassian.net/browse/CD-9750 on a real CodeScan instance.

Every class carries one `sf:UnescapedSource` violation. The **only** variable between the
P-series and the M-series is the shape of the member containing the violation.

| Group | Shape | Pre-fix (`main`) | Post-fix (PR #25) |
|---|---|---|---|
| SearchController | QA's original file — two properties, single-line getters | AI Fix Failed | AI Fix Generated |
| ThemeController | same shape, one property | AI Fix Failed | AI Fix Generated |
| P01 | multi-line property getter | Failed | Generated |
| P02 | property brace on the next line | Failed | Generated |
| P03 | `@AuraEnabled` on the preceding line | Failed | Generated |
| P04 | accessor-specific visibility (`private get`) | Failed | Generated |
| P05 | static property | Failed | Generated |
| P06 | transient property | Failed | Generated |
| P07 | property on an inner wrapper class | Failed | Generated |
| P08 | property immediately after a method | Failed | Generated |
| M01 | **control** — ordinary method | Generated | Generated |
| M02 | **control** — multi-line method signature | Generated | Generated |

The old extractor anchored on a visibility keyword followed by `(`. Properties have no
parameter list, so the backward scan fell to line 1 and handed the model the ApexDoc header.
