# Clinic Booking System

## Overview

The Clinic Booking System is designed to manage appointments, patients, doctors, and services in a clinic environment. This system allows for efficient scheduling and tracking of patient visits, ensuring that both patients and healthcare providers can manage their time effectively.

## Features

- Manage patient information

- Schedule and manage appointments
- 
- Track doctor availability
- 
- Record and manage services provided to patients

## Database Structure

The database consists of several tables with the following relationships:

- **Patients**: Stores patient information.
- 
- **Doctors**: Stores doctor information.
- 
- **Appointments**: Links patients and doctors, storing appointment details.
- 
- **departments**: Lists departments/services offered by the clinic.eg
- 
'1', 'Cardiology', 'Heart-related treatments'

'2', 'Pediatrics', 'Medical care for children'

'3', 'Orthopedics', 'Bone and joint care'

- **Appointment_status**: A junction table to manage the many-to-many relationship between appointments and departments. eg
- 
Scheduled

Canceled

Completed

## Setup Instructions

1. Database Creation:
2.  
   - Create a new database in your SQL server (e.g., MySQL, PostgreSQL).
   - 
   - Use the SQL script provided in `sql/clinic_booking_system.sql` to create the necessary tables and insert sample data.

3. **Running the SQL Script**:
4. 
   - Open your SQL client and connect to the database you created.
   - 
   - Execute the SQL script by running the commands in `sql/clinic_booking_system.sql`.

5. **Testing the Setup**:

   - After running the script, verify that the tables have been created and populated with sample data.
   - 
   - You can run queries to check the relationships and data integrity.

## Additional Information

For any issues or contributions, please refer to the project's issue tracker or contact the project maintainers.
