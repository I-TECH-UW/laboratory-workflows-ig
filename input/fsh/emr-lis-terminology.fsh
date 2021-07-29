Alias: TS = http://hl7.org/fhir/ValueSet/task-status
Alias: TI = http://hl7.org/fhir/ValueSet/task-intent
Alias: DS = http://hl7.org/fhir/diagnostic-report-status
Alias: LOINC = http://loinc.org

ValueSet:   LaboratoryTaskStatusVS
Id: laboratory-task-status-vs
Title: "Laboratory Status for Task"
Description:  "The state of the task, subset from https://www.hl7.org/FHIR/valueset-task-status.html"
* TS#task-status-requested "Requested"
* TS#task-status-rejected "Rejected"
* TS#task-status-accepted "Accepted"
* TS#task-status-completed "Completed"

ValueSet:   LaboratoryTaskIntentVS
Id: laboratory-task-intent-vs
Title: "Laboratory Intent for Task"
Description:  "The intent of the task, subset from https://www.hl7.org/FHIR/valueset-task-intent.html"
* TI#task-intent-order "Order"

ValueSet: LaboratoryOrderCodeVS
Id: laboratory-order-code-vs
Title: "EMR Lab Order Code"
Description: "The code for the lab order requested in the EMR."
* include codes from system LOINC

ValueSet:   LaboratoryDiagnosticReportStatusVS
Id: laboratory-diagnostic-report-status-vs
Title: "Laboratory Diagnostic Report Status Flag"
Description:  "The status of the diagnostic report, subset from https://www.hl7.org/fhir/valueset-diagnostic-report-status.html"
* DS#diagnostic-report-status-partial "Partial"
* DS#diagnostic-report-status-final "Final"
* DS#diagnostic-report-status-unknown "Unknown"
* DS#diagnostic-report-status-canceled "Canceled"
* DS#diagnostic-report-status-amended "Amended"
