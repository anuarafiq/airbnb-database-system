# AirBnB Database System

A relational database system designed to model the core operations of an AirBnB-like platform, including property listings, guest bookings, host management, staff maintenance, payments, and reviews.

Developed as a coursework project covering the full database lifecycle — from conceptual design to implementation and querying.

---

## Enhanced Entity-Relationship Diagram (EERD)

![EERD](Phase%201%20-%20Database%20Design/eerd.jpg)

---

## Database Overview

| Category            | Count |
|---------------------|-------|
| Entity Tables       | 22    |
| Junction Tables     | 15    |
| Columns per Table   | 10+   |
| Rows per Table      | 10+   |

**Tools:** Oracle SQL, SQL\*Plus

---

## Project Phases

### Phase 1 — Database Design
Conceptual and logical design of the database, including the Enhanced Entity-Relationship Diagram (EERD), relational schemas, data layouts, and data specifications.

### Phase 2 — Data Definition (DDL)
SQL scripts to create, populate, and drop all 37 tables.

| File | Description |
|------|-------------|
| `create_tables.sql` | Creates all entity and junction tables |
| `insert_data.sql` | Inserts sample data into all tables |
| `drop_tables.sql` | Drops all tables |

### Phase 3 — Data Manipulation (DML)
Five query scenarios demonstrating joins, aggregations, filters, and views across the database.

| File | Description |
|------|-------------|
| `scenario_1_guest_bookings.sql` | English-speaking guests with active bookings |
| `scenario_2_property_rooms_by_city.sql` | Room count by city, property type, and host class |
| `scenario_3_staff_maintenance_tasks.sql` | Permanent staff linked to maintenance tasks and earnings |
| `scenario_4_refund_payment_details.sql` | Completed refunds with full payment and invoice chain |
| `scenario_5_review_policy_report.sql` | View joining reviews, property policies, and occupancy reports |

---

## How to Run

Execute scripts in Oracle SQL\*Plus in this order:

1. `Phase 2 - Data Definition/create_tables.sql`
2. `Phase 2 - Data Definition/insert_data.sql`
3. Any scenario file from `Phase 3 - Data Manipulation/`
4. `Phase 2 - Data Definition/drop_tables.sql` to clean up
