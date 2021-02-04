Alias: TS = http://hl7.org/fhir/ValueSet/task-status
Alias: TI = http://hl7.org/fhir/ValueSet/task-intent

ValueSet:   EmrLabTaskStatus
Id: emr-lab-task-status
Title: "Status values for EMR-LMIS order and result workflow."
Description:  "The state of the task, subset from https://www.hl7.org/FHIR/valueset-task-status.html"
* TS#task-status-requested "Requested"
* TS#task-status-rejected "Rejected"
* TS#task-status-accepted "Accepted"
* TS#task-status-completed "Completed"

ValueSet:   EmrLabTaskIntent
Id: emr-lab-task-intent
Title: "Intent values for EMR-LMIS order and result workflow."
Description:  "The intent of the task, subset from https://www.hl7.org/FHIR/valueset-task-intent.html"
* TI#task-intent-order "Order"
