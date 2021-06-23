Profile:        EmrLisPatient
Parent:         PatientUvIps
Id:             emr-lab-patient
Title:          "EMR-LIS Workflow Patient"
Description:    "A patient used for EMR - LIS lab order and result communication."
* name 1..*
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier only EmrLisOpenmrsIdentifier