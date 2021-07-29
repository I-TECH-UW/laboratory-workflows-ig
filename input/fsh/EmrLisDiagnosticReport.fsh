Profile: LaboratoryDiagnosticReport
Parent: DiagnosticReportUvIps
Id: laboratory-diagnostic-report
Title: "Laboratory Diagnostic Report"
Description: "DiagnosticReport resource created by a LIS that representing results of an order submitted from an EMR System"
* code.coding 1..*
// TODO: Figure out how to slice on system, and make sure at least one is LOINC
* code.coding from LaboratoryOrderCodeVS
* status from LaboratoryDiagnosticReportStatusVS
* result only Reference(LaboratoryObservation)