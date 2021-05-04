

### USE CASES

#### USE CASE NAME: CAPTURING LAB ORDERS

ACTORS:

- Clinician

DEPENDENCIES:

- Availability of PIMS

DESCRIPTION:
> Clinician login the system and access the lab module. Clinician then enters Lab specimen details using a lab form available in the lab module.

PRE CONDITION:

- User successfully logs in to the system

ORDINARY SEQUENCE:

    Steps:

> 1. Log into the system
>
> 2. Access the Laboratory module
>
>3. Enter specimen details in lab order form available in the lab module.
>
>4. Save the order details
>
>5. Send the lab order details to SHR

POST CONDITION:

- Data successfully pushed to the interoperability layer

EXCEPTIONS:

    Steps:
>6. System caches the lab order details when there is network failure and resend late

ASSUMPTIONS:
- PIMS is hosted in the facility with access to the operability layer.
- The lab order form is sent to the laboratory with the specimen.
- The specimen ID is attached to the container with the specimen


COMMENTS:
>
>
>

### USE CASE DIAGRAM


<img src="usecase1.png" alt="drawing" style="width: 80%; margin: 0 10%;"/>
