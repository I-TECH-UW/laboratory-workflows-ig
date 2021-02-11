Profile: EmrLabTask
Parent: Task
Id: emr-lab-task
Title: "EMR-LIS Workflow Task Resource"
Description: "A Task resource for tracking order state and synchronizing communication between an EMR and a LIS"
* identifier 1..*
* basedOn 1..*
* basedOn only Reference(EmrLabServiceRequest)
* for only Reference(EmrLabPatient)
* encounter only Reference(Encounter)
* owner only Reference(Practitioner or Organization or HealthcareService)
* authoredOn 1..1
* status from EmrLabTaskStatus
* intent from EmrLabTaskIntent
* output.type.text = "DiagnosticReport"
* output.value[x] only Reference(EmrLabDiagnosticReport)

// Instance:       SampleEmrLabTask
// InstanceOf:     EmrLabTask
// Description:    "Sample Patient for EMR-LIS order and result workflow."
// Title:          "EMR-LIS Sample Patient"
// Usage:          #example

