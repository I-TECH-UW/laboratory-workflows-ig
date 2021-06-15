Profile: EmrLisDiagnosticReport
Parent: DiagnosticReportUvIps
Id: emr-lab-diagnostic-report
Title: "EMR-LIS Diagnostic Report"
Description: "DiagnosticReport resource created by a LIS that representing results of an order submitted from an EMR System"
* code.coding 1..*
// TODO: Figure out how to slice on system, and make sure at least one is LOINC
* code.coding from EmrLisOrderCodeVS
* status from EmrLisDiagnosticReportStatusVS
* result only Reference(EmrLisObservation)