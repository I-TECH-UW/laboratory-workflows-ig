Extension:      EmrLisPatientIdentifierLocationExtension
Id:             emr-lis-patient-identifier-location
Title:          "EMR-LIS Patient Identifier Location Extension"
Description:    "OpenMRS-specific location for OpenMRS ID Identifier"
* extension contains
    url 1..1 MS and
    valueReference 1..1 MS
// * url[x] = "http://fhir.openmrs.org/ext/patient/identifier#location"
* value only Reference(Location)

