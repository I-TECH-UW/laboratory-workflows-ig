Profile: LaboratoryTask
Parent: Task
Id: laboratory-task
Title: "Laboratory Workflow Task Resource"
Description: "A Task resource for tracking order state and synchronizing communication between an EMR and a LIS"
* identifier 1..*
* basedOn 1..*
* basedOn only Reference(LaboratoryServiceRequest)
* for only Reference(LaboratoryPatient)
* encounter only Reference(Encounter)
* owner only Reference(Practitioner or Organization or HealthcareService)
* authoredOn 1..1
* status from LaboratoryTaskStatusVS
* intent from LaboratoryTaskIntentVS
* output.type.text = "DiagnosticReport"
* output.value[x] only Reference(LaboratoryDiagnosticReport)

// Instance:       SampleLaboratoryTask
// InstanceOf:     LaboratoryTask
// Description:    "Sample Patient for Laboratory order and result workflow."
// Title:          "Laboratory Sample Patient"
// Usage:          #example

