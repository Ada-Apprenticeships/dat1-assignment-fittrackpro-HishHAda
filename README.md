# 📝 Fittrack Pro Database Assignment

This README will guide you through the assignment for the Fittrack Pro business

## Assignment Overview

This assignment consists for one part broken into multiple steps

You are tasked with initializating and creating queries for a database to allow for deployment in the future.

FitTrack Pro is a comprehensive database management system designed for our chain of fitness centers. This project is crucial for managing our operations efficiently and providing insights into our business performance.

** SQL Query Development **
- Create SQL commands to setup the database tables
- Import precursor data into database
- Write SQL queries to retrieve and manipulate data according to the business requirements
- Test the SQL queries

## ⚙️ Check your installation

We recommend using a [GitHub Codespace](https://docs.github.com/en/codespaces/overview) as your development environment for this project. If you create a Codespace using this repository it should automatically install the core applications and dependencies you need to get started with this assignment. However you should check that you have the correct software installed in your codespace before starting the assignment.

1. Check you have `sqlite3` installed in your project:

```terminal
sqlite3 --version
```

2. Check you have node installed in your project:

```terminal
node -v
```

## 🏗️ SQL query development

You will focus on writing SQL queries to set up the database tables, insert sample data and retrieve data according to the query requirements.

### Database Schema

Create the following tables in your database. We have provided a file `schema.sql` inside the `src` folder where you can create tables and insert data using SQL.

#### `locations` table

| Attribute     |
| ------------- |
| location_id   |
| name          |
| address       |
| phone_number  |
| email         |
| opening_hours |


#### `members` table

| Attribute               |
| ----------------------- |
| member_id               |
| first_name              |
| last_name               |
| email                   |
| phone_number            |
| date_of_birth           |
| join_date               |
| emergency_contact_name  |
| emergency_contact_phone |


#### `staff` table

| Attribute    |      |
| ------------ | ---- |
| staff_id     |
| first_name   |
| last_name    |
| email        |
| phone_number |
| position     | Trainer, Manager, Receptionist, Maintenance |
| hire_date    |
| location_id  |


#### `equipment` table

| Attribute             |      |
| --------------------- | ---- |
| equipment_id          |
| name                  |
| type                  | Cardio, Strength |
| purchase_date         |
| last_maintenance_date |
| next_maintenance_date |
| location_id           |


#### `classes` table

| Attribute   |
| ----------- |
| class_id    |
| name        |
| description |
| capacity    |
| duration    |
| location_id |


#### `class_schedule` table

| Attribute   |
| ----------- |
| schedule_id |
| class_id    |
| staff_id    |
| start_time  |
| end_time    |


#### `memberships` table

| Attribute     |      |
| ------------- | ---- |
| membership_id |
| member_id     |
| type          |
| start_date    |
| end_date      |
| status        | Active, Inactive |


#### `attendance` table

| Attribute      |
| -------------- |
| attendance_id  |
| member_id      |
| location_id    |
| check_in_time  |
| check_out_time |


#### `class_attendance` table

| Attribute           |      |
| ------------------- | ---- |
| class_attendance_id |
| schedule_id         |
| member_id           |
| attendance_status   | Registered, Attended, Unattended |


#### `payments` table

| Attribute      |      |
| -------------- | ---- |
| payment_id     |
| member_id      |
| amount         |
| payment_date   |
| payment_method | Credit Card, Bank Transfer, PayPal, Cash |
| payment_type   | Monthly membership fee, Day pass |


#### `personal_training_sessions` table

| Attribute    |
| ------------ |
| session_id   |
| member_id    |
| staff_id     |
| session_date |
| start_time   |
| end_time     |
| notes        |


#### `member_health_metrics` table

| Attribute           |
| ------------------- |
| metric_id           |
| member_id           |
| measurement_date    |
| weight              |
| body_fat_percentage |
| muscle_mass         |
| bmi                 |


#### `equipment_maintenance_log` table

| Attribute        |
| ---------------- |
| log_id           |
| equipment_id     |
| maintenance_date |
| description      |
| staff_id         |

Once you've created your tables, you'll need to run this and create some data to add into your database to check that your tables are defined correctly.

### Database Import

The team has provided us with some initial data alongside creating our own data entries to help test the new database, when the schema is ready they have setup a script to import this new data over, this should be done on a blank database (tables only, no data)

```shell
npm run import
```

You can then add any other test inserts as you like

## Task Outline
Use this as a checklist to keep track of your progress.

#### 1. User Management (user_management.sql)
1. [ ] 1.1 Retrieve all members
2. [ ] 1.2 Update a member's contact information
3. [ ] 1.3 Count total number of members
4. [ ] 1.4  Find member with the most class registrations
5. [ ] 1.5 Find member with the least class registrations
6. [ ] 1.6 Calculate the percentage of members who have attended at least one class

#### 2. Payment Management (payment_management.sql)
1. [ ] 2.1 Record a payment for a membership
2. [ ] 2.2 Calculate total revenue from membership fees for each month of the last year
3. [ ] 2.3 Find all day pass purchases

#### 3. Equipment Management (equipment_management.sql)
1. [ ] 3.1 Find equipment due for maintenance in the next 30 days
2. [ ] 3.2 Count equipment types in stock
3. [ ] 3.3 Calculate average age of equipment by type (in days)

#### 4. Class Scheduling (class_scheduling.sql)
1. [ ] 4.1 List all classes with their instructors
2. [ ] 4.2 Find available classes for a specific date
3. [ ] 4.3 Register a member for a class
4. [ ] 4.4 Cancel a class registration
5. [ ] 4.5 List top 3 most popular classes
6. [ ] 4.6 Calculate average number of classes per member

#### 5. Membership Management (membership_management.sql)
1. [ ] 5.1 List all active memberships
2. [ ] 5.2 Calculate the average duration of gym visits for each membership type
3. [ ] 5.3 Identify members with expiring memberships this year

#### 6. Attendance Tracking (attendance_tracking.sql)
1. [ ] 6.1 Record a member's gym visit
2. [ ] 6.2 Retrieve a member's attendance history
3. [ ] 6.3 Find the busiest day of the week based on gym visits
4. [ ] 6.4 Calculate the average daily attendance for each location

#### 7. Staff Management (staff_management.sql)
1. [ ] 7.1 List all staff members by role
2. [ ] 7.2 Find trainers with one or more personal training session in the next 30 days

#### 8. Personal Training (personal_training.sql)
1. [ ] 8.1 List all personal training sessions for a specific trainer

## Task Details

### 1. User Management (user_management.sql)

------
------
#### 1.1. Retrieve all members

| Task                 | Details                    |
| -------------------- | -------------------------- |
| Retrieve all members |                            |
| Output               | A result set with columns: |

```plaintext
member_id | first_name | last_name | email | join_date
```

------
------
#### 1.2. Update a member's contact information

| Task                                                   | Details                                                               |
| ------------------------------------------------------ | --------------------------------------------------------------------- |
| Update the phone number and email for member with ID 5 |                                                                       |
| New phone number                                       | '555-9876'                                                            |
| New email                                              | [emily.jones.updated@email.com](mailto:emily.jones.updated@email.com) |
| Output                                                 | No result set. Affects 1 row.                                         |

------
------
#### 1.3. Count total number of members

| Task                          | Details                                                  |
| ----------------------------- | -------------------------------------------------------- |
| Count total number of members |                                                          |
| Output                        | A single value representing the total number of members. |

------
------
#### 1.4. Find member with the most class registrations

| Task                                          | Details                    |
| --------------------------------------------- | -------------------------- |
| Find member with the most class registrations |                            |
| Output                                        | A single row with columns: |

```plaintext
member_id | first_name | last_name | registration_count
```

------
------
#### 1.5. Find member with the least class registrations

| Task                                           | Details                    |
| ---------------------------------------------- | -------------------------- |
| Find member with the least class registrations |                            |
| Output                                         | A single row with columns: |

```plaintext
member_id | first_name | last_name | registration_count
```

------
------
#### 1.6. Calculate the percentage of members who have attended at least one class

| Task                                                                     | Details                                     |
| ------------------------------------------------------------------------ | ------------------------------------------- |
| Calculate the percentage of members who have attended at least one class |                                             |
| Output                                                                   | A single value representing the percentage. |


### 2. Payment Management (payment_management.sql)

------
------
#### 2.1. Record a payment for a membership

| Task                                              | Details                       |
| ------------------------------------------------- | ----------------------------- |
| Insert a new payment record for member with ID 11 |                               |
| Amount                                            | $50.00                        |
| Payment date                                      | Current date and time         |
| Payment method                                    | 'Credit Card'                 |
| Payment type                                      | 'Monthly membership fee'      |
| Output                                            | No result set. Affects 1 row. |

------
------
#### 2.2. Calculate total revenue from membership fees for each month of the last year

| Task                                                                            | Details                    |
| ------------------------------------------------------------------------------- | -------------------------- |
| Calculate total revenue from membership fees for each month of the last year    |                            |
| Output                                                                          | A result set with columns: |
 ```plaintext           
 month | total_revenue  
 ```                    

------
------
#### 2.3. Find all day pass purchases

| Task                        | Details                    |
| --------------------------- | -------------------------- |
| Find all day pass purchases |                            |
| Output                      | A result set with columns: |
 ```plaintext 
 payment_id | amount | payment_date | payment_method |
 ```          

### 3. Equipment Management (equipment_management.sql)

------
------
#### 3.1. Find equipment due for maintenance in the next 30 days

| Task                                                                        | Details                    |
| --------------------------------------------------------------------------- | -------------------------- |
| List all equipment with next_maintenance_date in the next 30 days |                            |
| Output                                                                      | A result set with columns: |

```plaintext
equipment_id | name | next_maintenance_date
```

------
------
#### 3.2. Count equipment types in stock

| Task                                         | Details                    |
| -------------------------------------------- | -------------------------- |
| Count the number of equipment types in stock |                            |
| Output                                       | A result set with columns: |

```plaintext
equipment_type | count
```

------
------
#### 3.3. Calculate average age of equipment by type (in days)

| Task                                                     | Details                    |
| -------------------------------------------------------- | -------------------------- |
| Calculate the average age of equipment by type (in days) |                            |
| Output                                                   | A result set with columns: |

```plaintext
equipment_type | avg_age_days
```

### 4. Class Scheduling (class_scheduling.sql)

------
------
#### 4.1. List all classes with their instructors

| Task                                    | Details                    |
| --------------------------------------- | -------------------------- |
| List all classes with their instructors |                            |
| Output                                  | A result set with columns: |

```plaintext
class_id | class_name | instructor_name
```

------
------
#### 4.2. Find available classes for a specific date

| Task                                   | Details                    |
| -------------------------------------- | -------------------------- |
| List classes available on '2025-02-01' |                            |
| Output                                 | A result set with columns: |

```plaintext
class_id | name | start_time | end_time | available_spots
```

------
------
#### 4.3. Register a member for a class

| Task                                                                               | Details                                                 |
| ---------------------------------------------------------------------------------- | ------------------------------------------------------- |
| Register member with ID 11 for the Spin Class (class_id 3) on '2025-02-01' |                                                         |
| Output                                                                             | No result set. Affects 1 row in class_attendance table. |


------
------
#### 4.4. Cancel a class registration

| Task                                                                                                 | Details                                                 |
| ---------------------------------------------------------------------------------------------------- | ------------------------------------------------------- |
| Cancel the registration for member with ID 2 from the Scheduled Yoga Basics class (schedule_id 7)  |                                                         |
| Output                                                                                               | No result set. Affects 1 row in class_attendance table. |

------
------
#### 4.5. List top 3 most popular classes

| Task                                                      | Details                    |
| --------------------------------------------------------- | -------------------------- |
| List the top 3 most popular classes by registration count |                            |
| Output                                                    | A result set with columns: |

```plaintext
class_id | class_name | registration_count
```


------
------
#### 4.6. Calculate average number of classes per member

| Task                                               | Details                                                               |
| -------------------------------------------------- | --------------------------------------------------------------------- |
| Calculate the average number of classes per member |                                                                       |
| Output                                             | A single value representing the average number of classes per member. |


### 5. Membership Management (membership_management.sql)

------
------
#### 5.1. List all active memberships with member details

| Task                        | Details                    |
| --------------------------- | -------------------------- |
| List all active memberships |                            |
| Output                      | A result set with columns: |

```plaintext
member_id | first_name | last_name | membership_type | join_date
```

------
------
#### 5.2. Calculate the average duration of gym visits for each membership type

| Task                                                                  | Details                    |
| --------------------------------------------------------------------- | -------------------------- |
| Calculate the average duration of gym visits for each membership type |                            |
| Output                                                                | A result set with columns: |

```plaintext
membership_type | avg_visit_duration_minutes
```

------
------
#### 5.3. Identify members with expiring memberships this year

| Task                                                               | Details                    |
| ------------------------------------------------------------------ | -------------------------- |
| List members whose memberships will expire within the next year |                            |
| Output                                                             | A result set with columns: |

```plaintext
member_id | first_name | last_name | email | end_date
```

### 6. Attendance Tracking (attendance_tracking.sql)

------
------
#### 6.1. Record a member's gym visit

| Task                                                                    | Details                                           |
| ----------------------------------------------------------------------- | ------------------------------------------------- |
| Insert a new attendance record for member with ID 7 at Downtown Fitness |                                                   |
| Location                                                                | Downtown Fitness (location_id 1)                  |
| Check-in time                                                           | Current date and time                             |
| Output                                                                  | No result set. Affects 1 row in attendance table. |


------
------
#### 6.2. Retrieve a member's attendance history

| Task                                        | Details                    |
| ------------------------------------------- | -------------------------- |
| Get attendance history for member with ID 5 |                            |
| Output                                      | A result set with columns: |

```plaintext
visit_date | check_in_time | check_out_time
```

------
------
#### 6.3. Find the busiest day of the week based on gym visits

| Task                                                     | Details                    |
| -------------------------------------------------------- | -------------------------- |
| Identify the busiest day of the week based on gym visits |                            |
| Output                                                   | A result set with columns: |

```plaintext
day_of_week | visit_count
```

------
------
#### 6.4. Calculate the average daily attendance for each location

| Task                                                     | Details                    |
| -------------------------------------------------------- | -------------------------- |
| Calculate the average daily attendance for each location |                            |
| Output                                                   | A result set with columns: |

```plaintext
location_name | avg_daily_attendance
```

------
------
### 7. Staff Management (staff_management.sql)

#### 7.1. List all staff members by role

| Task                           | Details                    |
| ------------------------------ | -------------------------- |
| List all staff members by role |                            |
| Output                         | A result set with columns: |

```plaintext
staff_id | first_name | last_name | role
```

------
------
#### 7.2 Find trainers with one or more personal training session in the next 30 days

| Task                                                                 | Details                    |
| -------------------------------------------------------------------- | -------------------------- |
|  Find trainers with one or more personal training session in the next 30 days |
|                            |
| Output                                                               | A result set with columns: |

```plaintext
trainer_id | trainer_name | session_count
```


### 8. Personal Training (personal_training.sql)
------
------
#### 8.1. List all personal training sessions for specific trainer "Ivy Irwin"
| Task                                                                 | Details                    |
| -------------------------------------------------------------------- | -------------------------- |
| List all personal training sessions for specific trainer "Ivy Irwin" |                            |
| Output                                                               | A result set with columns: |

```plaintext
session_id | member_name | session_date | start_time | end_time
```

## 🔍 Checking your SQL queries

`sqlite3` has a CLI (command line interface) which we can use to interact with our Sqlite databases. You can check your SQL queries by running your `.sql` files with the `sqlite3` CLI.

| ℹ️ Double check you have `sqlite3` installed in your codespace. Open a terminal and run `sqlite3 --version` to check you get the sqlite3 version in the command output.

To run any `.sql` file with `sqlite3`, you can:

1. Ensure your `.sql` file opens a database using the `.open` statement.
2. Open a terminal and use the `sqlite3` command-line tool from the root directory:
   ```sh
   sqlite3 <name-of-database>.db < <path-to-file>.sql
   ```
3. Check the query output when you run the command.

For example, to run the file `schema.sql` located in the `src` directory, you can:

1. Open a terminal and run the following command from the root directory:

```sh
sqlite3 fittrackpro.db < src/schema.sql
```
2. Check the query output when you run the command


## 📝 Additional Notes

Happy coding and testing!