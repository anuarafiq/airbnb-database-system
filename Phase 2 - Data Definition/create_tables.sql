/* ============================== ENTITY ============================== */

/* ===============================
   USER (SUPERCLASS)
================================= */
prompt
prompt Attempting to create table "user"

CREATE TABLE "user" (
    user_id VARCHAR2(15),
    user_category VARCHAR2(15),
    full_name VARCHAR2(250) NOT NULL,
    email VARCHAR2(75) NOT NULL,
    PRIMARY KEY (user_id, user_category)
);

/* ===============================
   STAFF_ROLE
================================= */
prompt
prompt Attempting to create table staff_role

CREATE TABLE staff_role (
    role_id VARCHAR2(15),
    role_code VARCHAR2(15),
    role_title VARCHAR2(50) NOT NULL,
    job_description VARCHAR2(100) NOT NULL,
    base_salary NUMBER(10,2) NOT NULL,
    is_managerial NUMBER(1) NOT NULL,
    require_certificate NUMBER(1) NOT NULL,
    probation_period INT NOT NULL,
    max_shift_hours INT NOT NULL,
    allowance NUMBER(10,2) NOT NULL,
    status NUMBER(1) NOT NULL,
    PRIMARY KEY (role_id, role_code)
);

/* ===============================
   PROPERTY_TYPE
================================= */
prompt
prompt Attempting to create table property_type

CREATE TABLE property_type (
    property_type_id VARCHAR2(15),
    type_code VARCHAR2(15),
    type_name VARCHAR2(50) NOT NULL,
    description VARCHAR2(100) NOT NULL,
    max_occupancy INT NOT NULL,
    base_price NUMBER(10,2) NOT NULL,
    date_created DATE NOT NULL,
    status VARCHAR2(50) NOT NULL,
    tax_rate NUMBER(10,2) NOT NULL,
    cleaning_fee NUMBER(10,2) NOT NULL,
    remarks VARCHAR2(100) NOT NULL,
    PRIMARY KEY (property_type_id, type_code)
);

/* ===============================
   AMENITY
================================= */
prompt
prompt Attempting to create table amenity

CREATE TABLE amenity (
    amenity_id VARCHAR2(15),
    amenity_code VARCHAR2(15),
    amenity_name VARCHAR2(50) NOT NULL,
    description VARCHAR2(50) NOT NULL,
    category VARCHAR2(50) NOT NULL,
    extra_charge INT NOT NULL,
    is_premium NUMBER(1) NOT NULL,
    status VARCHAR2(50) NOT NULL,
    date_created DATE NOT NULL,
    date_updated DATE NOT NULL,
    remarks VARCHAR2(50) NOT NULL,
    PRIMARY KEY (amenity_id, amenity_code)
);

/* ===============================
   POLICY
================================= */
prompt
prompt Attempting to create table policy

CREATE TABLE policy (
    policy_id VARCHAR2(15),
    policy_code VARCHAR2(100),
    policy_type VARCHAR2(30) NOT NULL,  
    description VARCHAR2(400) NOT NULL,  
    effective_date DATE NOT NULL,  
    expiry_date DATE NOT NULL,  
    full_text VARCHAR2(1000) NOT NULL,  
    summary VARCHAR2(100) NOT NULL,  
    status NUMBER(1) NOT NULL,  
    last_updated DATE NOT NULL,  
    PRIMARY KEY (policy_id, policy_code)  
);

/* ===============================
   GUEST (SUBCLASS)
================================= */
prompt
prompt Attempting to create table guest

CREATE TABLE guest (
    guest_id VARCHAR2(15),
    platform VARCHAR2(15),
    full_name VARCHAR2(250) NOT NULL,
    email VARCHAR2(75) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender NUMBER(1) NOT NULL,
    nationality VARCHAR2(30) NOT NULL,
    preferred_language VARCHAR2(30) NOT NULL,
    loyalty_level INT NOT NULL,
    emergency_contact VARCHAR2(30) NOT NULL,
    verification_status NUMBER(1) NOT NULL,
    date_joined DATE NOT NULL,
    total_loyalty_points INT NOT NULL,
    user_id VARCHAR2(15) NOT NULL,
    user_category VARCHAR2(15) NOT NULL,
    PRIMARY KEY (guest_id, platform),
    FOREIGN KEY (user_id, user_category) REFERENCES "user"(user_id, user_category)
);

/* ===============================
   HOST (SUBCLASS)
================================= */
prompt
prompt Attempting to create table host

CREATE TABLE host (
    host_id VARCHAR2(15),
    profile_class VARCHAR2(15),
    tax_no VARCHAR2(30) NOT NULL,
    ssm_no VARCHAR2(30) NOT NULL,
    date_joined DATE NOT NULL,
    host_bio VARCHAR2(250) NOT NULL,
    verification_status VARCHAR2(20) NOT NULL,
    preferred_payout_method VARCHAR2(50) NOT NULL,
    total_properties INT NOT NULL,
    rating VARCHAR2(20) NOT NULL,
    response_time VARCHAR2(20) NOT NULL,
    user_id VARCHAR2(15) NOT NULL,
    user_category VARCHAR2(15) NOT NULL,
    PRIMARY KEY (host_id, profile_class),
    FOREIGN KEY (user_id, user_category) REFERENCES "user"(user_id, user_category)
);

/* ===============================
   PROPERTY
================================= */
prompt
prompt Attempting to create table property

CREATE TABLE property (
    property_id VARCHAR2(15),
    branch_code VARCHAR2(10),
    property_name VARCHAR2(50) NOT NULL,
    address VARCHAR2(50) NOT NULL,
    city VARCHAR2(50) NOT NULL,
    state VARCHAR2(50) NOT NULL,
    price_per_night INT NOT NULL,
    property_status VARCHAR2(50) NOT NULL,
    date_listed DATE NOT NULL,
    check_in_time timestamp NOT NULL,
    check_out_time timestamp NOT NULL,
    host_id VARCHAR2(15) NOT NULL,
    profile_class VARCHAR2(15) NOT NULL,
    property_type_id VARCHAR2(15) NOT NULL,
    type_code VARCHAR2(15) NOT NULL,
    PRIMARY KEY (property_id, branch_code),
    FOREIGN KEY (host_id, profile_class) REFERENCES host(host_id, profile_class),
    FOREIGN KEY (property_type_id, type_code) REFERENCES property_type(property_type_id, type_code)
);

/* ===============================
   ROOM
================================= */
prompt
prompt Attempting to create table room

CREATE TABLE room (
    room_id VARCHAR2(15),
    room_code VARCHAR2(15),
    room_type VARCHAR2(50) NOT NULL,
    room_size VARCHAR2(50) NOT NULL,
    bed_count INT NOT NULL,
    bathroom_count INT NOT NULL,
    floor_level INT NOT NULL,
    smoking_allowed NUMBER(1) NOT NULL,
    room_status VARCHAR2(50) NOT NULL,
    base_rate NUMBER(10,2) NOT NULL,
    description VARCHAR2(100) NOT NULL,
    host_id VARCHAR2(15) NOT NULL,
    profile_class VARCHAR2(15) NOT NULL,
    property_id VARCHAR2(15) NOT NULL,
    branch_code VARCHAR2(10) NOT NULL,
    PRIMARY KEY (room_id, room_code),
    FOREIGN KEY (host_id, profile_class) REFERENCES host(host_id, profile_class),
    FOREIGN KEY (property_id, branch_code) REFERENCES property(property_id, branch_code)
);

/* ===============================
   STAFF (SUBCLASS)
================================= */
prompt
prompt Attempting to create table staff

CREATE TABLE staff (
    staff_id VARCHAR2(15),
    employment_mode VARCHAR2(15),
    full_name VARCHAR2(250) NOT NULL,
    email VARCHAR2(75) NOT NULL,
    phone VARCHAR2(20) NOT NULL,
    hire_date DATE NOT NULL,
    shift_type INT NOT NULL,
    employment_status VARCHAR2(20) NOT NULL,
    salary NUMBER(10,2) NOT NULL,
    emergency_contact VARCHAR2(50) NOT NULL,
    performance_rating INT NOT NULL,
    user_id VARCHAR2(15) NOT NULL,
    user_category VARCHAR2(15) NOT NULL,
    host_id VARCHAR2(15) NOT NULL,
    profile_class VARCHAR2(15) NOT NULL,
    role_id VARCHAR2(15) NOT NULL,
    role_code VARCHAR2(15) NOT NULL,
    PRIMARY KEY (staff_id, employment_mode),
    FOREIGN KEY (user_id, user_category) REFERENCES "user"(user_id, user_category),
    FOREIGN KEY (host_id, profile_class) REFERENCES host(host_id, profile_class),
    FOREIGN KEY (role_id, role_code) REFERENCES staff_role(role_id, role_code)
);

/* ===============================
   PAYOUT
================================= */
prompt
prompt Attempting to create table payout

CREATE TABLE payout (
    payout_id VARCHAR2(15),
    payout_ref VARCHAR2(15),
    payout_date DATE NOT NULL,
    amount NUMBER(10,2) NOT NULL,
    bank_name VARCHAR2(30) NOT NULL,
    account_number VARCHAR2(20) NOT NULL,
    reference_no VARCHAR2(15) NOT NULL,
    status NUMBER(1) NOT NULL,
    processing_fee VARCHAR2(15) NOT NULL,
    remarks VARCHAR2(100) NOT NULL,
    payout_method VARCHAR2(30) NOT NULL,
    host_id VARCHAR2(15) NOT NULL,
    profile_class VARCHAR2(15) NOT NULL,
    earning_id VARCHAR2(15) NOT NULL,
    earning_period_code VARCHAR2(15) NOT NULL,
    PRIMARY KEY (payout_id, payout_ref),
    FOREIGN KEY (host_id, profile_class) REFERENCES host(host_id, profile_class)
);

/* ===============================
   EARNING
================================= */
prompt
prompt Attempting to create table earning

CREATE TABLE earning (
    earning_id VARCHAR2(15),
    earning_period_code VARCHAR2(15),
    month INT NOT NULL,  
    year INT NOT NULL,  
    total_booking INT NOT NULL,  
    gross_income NUMBER(10,2) NOT NULL,  
    platform_fee NUMBER(10,2) NOT NULL,  
    net_income NUMBER(10,2) NOT NULL,  
    payout_status VARCHAR2(15) NOT NULL,  
    generated_date date NOT NULL,  
    tax_levied NUMBER(10,2) NOT NULL,  
    host_id VARCHAR2(15) NOT NULL,  
    profile_class VARCHAR2(15) NOT NULL,
    payout_id VARCHAR2(15) NOT NULL,
    payout_ref VARCHAR2(15) NOT NULL, 
    PRIMARY KEY (earning_id, earning_period_code),  
    FOREIGN KEY (host_id, profile_class) REFERENCES host(host_id, profile_class),
    FOREIGN KEY (payout_id, payout_ref) REFERENCES payout(payout_id, payout_ref)    
);

/* ===============================
   BOOKING
================================= */
prompt
prompt Attempting to create table booking

CREATE TABLE booking (
    booking_id VARCHAR2(15),
    booking_code VARCHAR2(15),
    booking_date DATE NOT NULL,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    guest_count INT NOT NULL,
    total_price NUMBER(10,2) NOT NULL,
    booking_status NUMBER(1) NOT NULL,
    special_request VARCHAR2(100) NOT NULL,
    is_business_trip NUMBER(1) NOT NULL,
    check_in_method NUMBER(1) NOT NULL,
    guest_id VARCHAR2(15) NOT NULL,
    platform VARCHAR2(15) NOT NULL,
    property_id VARCHAR2(15) NOT NULL,
    branch_code VARCHAR2(10) NOT NULL,
    room_id VARCHAR2(15) NOT NULL,
    room_code VARCHAR2(15) NOT NULL,
    property_type_id VARCHAR2(15) NOT NULL,
    type_code VARCHAR2(15) NOT NULL,
    host_id VARCHAR2(15) NOT NULL,  
    profile_class VARCHAR2(15) NOT NULL,
    earning_id VARCHAR2(15) NOT NULL,
    earning_period_code VARCHAR2(15) NOT NULL,
    PRIMARY KEY (booking_id, booking_code),
    FOREIGN KEY (guest_id, platform) REFERENCES guest(guest_id, platform),
    FOREIGN KEY (property_id, branch_code) REFERENCES property(property_id, branch_code),
    FOREIGN KEY (room_id, room_code) REFERENCES room(room_id, room_code),
    FOREIGN KEY (property_type_id, type_code) REFERENCES property_type(property_type_id, type_code),
    FOREIGN KEY (host_id, profile_class) REFERENCES host(host_id, profile_class),
    FOREIGN KEY (earning_id, earning_period_code) REFERENCES earning(earning_id, earning_period_code)
);

/* ===============================
   INVOICE
================================= */
prompt
prompt Attempting to create table invoice

CREATE TABLE invoice (
    invoice_id VARCHAR2(15),
    invoice_no VARCHAR2(15),
    invoice_date DATE NOT NULL,
    invoice_number INT NOT NULL,
    billing_name VARCHAR2(50) NOT NULL,
    billing_address VARCHAR2(500) NOT NULL,
    sub_total DECIMAL NOT NULL,
    tax_amount DECIMAL NOT NULL,
    total_amount DECIMAL NOT NULL,
    invoice_status VARCHAR2(50) NOT NULL,
    due_date DATE NOT NULL,
    booking_id VARCHAR2(15) NOT NULL,
    booking_code VARCHAR2(15) NOT NULL,
    guest_id VARCHAR2(15) NOT NULL,
    platform VARCHAR2(15) NOT NULL,
    host_id VARCHAR2(15) NOT NULL,  
    profile_class VARCHAR2(15) NOT NULL,
    PRIMARY KEY (invoice_id, invoice_no),
    FOREIGN KEY (booking_id, booking_code) REFERENCES booking(booking_id, booking_code),
    FOREIGN KEY (guest_id, platform) REFERENCES guest(guest_id, platform),
    FOREIGN KEY (host_id, profile_class) REFERENCES host(host_id, profile_class)
);

/* ===============================
   PAYMENT
================================= */
prompt
prompt Attempting to create table payment

CREATE TABLE payment (
    payment_id VARCHAR2(15),
    payment_ref VARCHAR2(15),
    payment_date DATE NOT NULL,
    payment_method NUMBER(1) NOT NULL,
    amount NUMBER(10,2) NOT NULL,
    currency VARCHAR2(30) NOT NULL,
    payment_status VARCHAR2(30) NOT NULL,
    transaction_ref VARCHAR2(50) NOT NULL,
    payment_type VARCHAR2(30) NOT NULL,
    tax_amount VARCHAR2(30) NOT NULL,
    card_last_four_digits INT NOT NULL,
    invoice_id VARCHAR2(15) NOT NULL,
    invoice_no VARCHAR2(15) NOT NULL,
    guest_id VARCHAR2(15) NOT NULL,
    platform VARCHAR2(15) NOT NULL,
    payout_id VARCHAR2(15) NOT NULL,
    payout_ref VARCHAR2(15) NOT NULL,
    earning_id VARCHAR2(15) NOT NULL,
    earning_period_code VARCHAR2(15) NOT NULL,
    booking_id VARCHAR2(15) NOT NULL,
    booking_code VARCHAR2(15) NOT NULL,
    room_id VARCHAR2(15) NOT NULL,
    room_code VARCHAR2(15) NOT NULL,
    property_id VARCHAR2(15) NOT NULL,
    branch_code VARCHAR2(10) NOT NULL,
    host_id VARCHAR2(15) NOT NULL,  
    profile_class VARCHAR2(15) NOT NULL,
    PRIMARY KEY (payment_id, payment_ref),
    FOREIGN KEY (invoice_id, invoice_no) REFERENCES invoice(invoice_id, invoice_no),
    FOREIGN KEY (guest_id, platform) REFERENCES guest(guest_id, platform),
    FOREIGN KEY (payout_id, payout_ref) REFERENCES payout(payout_id, payout_ref),
    FOREIGN KEY (earning_id, earning_period_code) REFERENCES earning(earning_id, earning_period_code),
    FOREIGN KEY (booking_id, booking_code) REFERENCES booking(booking_id, booking_code),
    FOREIGN KEY (room_id, room_code) REFERENCES room(room_id, room_code),
    FOREIGN KEY (property_id, branch_code) REFERENCES property(property_id, branch_code),
    FOREIGN KEY (host_id, profile_class) REFERENCES host(host_id, profile_class)
);

/* ===============================
   CANCELLATION
================================= */
prompt
prompt Attempting to create table cancellation

CREATE TABLE cancellation (
    cancellation_id VARCHAR2(15),
    cancellation_ref VARCHAR2(15),
    notice_period_hour INT NOT NULL,  
    cancellation_date date NOT NULL,  
    reason VARCHAR2(400) NOT NULL,  
    refund_eligible NUMBER(1) NOT NULL,  
    penalty_amount NUMBER(10,2) NOT NULL,  
    status NUMBER(1) NOT NULL,  
    cancellation_method VARCHAR2(30) NOT NULL,  
    remarks VARCHAR2(100) NOT NULL,  
    requested_via VARCHAR2(20) NOT NULL,  
    payment_id VARCHAR2(15) NOT NULL,  
    payment_ref VARCHAR2(15) NOT NULL,  
    booking_id VARCHAR2(15) NOT NULL,  
    booking_code VARCHAR2(15) NOT NULL,
    guest_id VARCHAR2(15) NOT NULL,
    platform VARCHAR2(15) NOT NULL,
    property_id VARCHAR2(15) NOT NULL,
    branch_code VARCHAR2(10) NOT NULL,
    room_id VARCHAR2(15) NOT NULL,
    room_code VARCHAR2(15) NOT NULL,
    PRIMARY KEY (cancellation_id, cancellation_ref),  
    FOREIGN KEY (payment_id, payment_ref) REFERENCES payment(payment_id, payment_ref),  
    FOREIGN KEY (booking_id, booking_code) REFERENCES booking(booking_id, booking_code),
    FOREIGN KEY (guest_id, platform) REFERENCES guest(guest_id, platform),
    FOREIGN KEY (property_id, branch_code) REFERENCES property(property_id, branch_code),
    FOREIGN KEY (room_id, room_code) REFERENCES room(room_id, room_code)
);

/* ===============================
   REFUND
================================= */
prompt
prompt Attempting to create table refund

CREATE TABLE refund (
    refund_id VARCHAR2(15),
    refund_ref VARCHAR2(15),
    "date" DATE NOT NULL,  
    amount INT NOT NULL,  
    method VARCHAR2(50) NOT NULL,  
    reason VARCHAR2(100) NOT NULL,  
    status VARCHAR2(50) NOT NULL,  
    percentage_refund NUMBER(10,2) NOT NULL,  
    processed_date DATE NOT NULL,  
    remarks VARCHAR2(100) NOT NULL,  
    is_partial_refund NUMBER(1) NOT NULL,  
    cancellation_id VARCHAR2(15) NOT NULL,  
    cancellation_ref VARCHAR2(15) NOT NULL,  
    payment_id VARCHAR2(15) NOT NULL,  
    payment_ref VARCHAR2(15) NOT NULL,
    host_id VARCHAR2(15) NOT NULL,  
    profile_class VARCHAR2(15) NOT NULL,
    booking_id VARCHAR2(15) NOT NULL,
    booking_code VARCHAR2(15) NOT NULL,
    PRIMARY KEY (refund_id, refund_ref),  
    FOREIGN KEY (cancellation_id, cancellation_ref) REFERENCES cancellation(cancellation_id, cancellation_ref),  
    FOREIGN KEY (payment_id, payment_ref) REFERENCES payment(payment_id, payment_ref),
    FOREIGN KEY (host_id, profile_class) REFERENCES host(host_id, profile_class),
    FOREIGN KEY (booking_id, booking_code) REFERENCES booking(booking_id, booking_code)
);

/* ===============================
   RECEIPT
================================= */
prompt
prompt Attempting to create table receipt

CREATE TABLE receipt (
    receipt_id VARCHAR2(15),
    receipt_no VARCHAR2(15),
    date_generated DATE NOT NULL,  
    digital_signature_hash VARCHAR2(20) NOT NULL,  
    total_amount NUMBER(10,2) NOT NULL,  
    tax_amount NUMBER(10,2) NOT NULL,  
    processing_fee NUMBER(10,2) NOT NULL,  
    currency VARCHAR2(15) NOT NULL,  
    header_note VARCHAR2(20) NOT NULL,  
    billing_address VARCHAR2(100) NOT NULL,  
    payment_id VARCHAR2(15) NOT NULL,  
    payment_ref VARCHAR2(15) NOT NULL,  
    guest_id VARCHAR2(15) NOT NULL,  
    platform VARCHAR2(15) NOT NULL, 
    invoice_id VARCHAR2(15) NOT NULL,
    invoice_no VARCHAR2(15) NOT NULL,
    booking_id VARCHAR2(15) NOT NULL,
    booking_code VARCHAR2(15) NOT NULL,
    host_id VARCHAR2(15) NOT NULL,  
    profile_class VARCHAR2(15) NOT NULL,
    PRIMARY KEY (receipt_id, receipt_no),  
    FOREIGN KEY (payment_id, payment_ref) REFERENCES payment(payment_id, payment_ref),  
    FOREIGN KEY (guest_id, platform) REFERENCES guest(guest_id, platform) ,
    FOREIGN KEY (invoice_id, invoice_no) REFERENCES invoice(invoice_id, invoice_no),
    FOREIGN KEY (booking_id, booking_code) REFERENCES booking(booking_id, booking_code),
    FOREIGN KEY (host_id, profile_class) REFERENCES host(host_id, profile_class)
);

/* ===============================
   REVIEW
================================= */
prompt
prompt Attempting to create table review

CREATE TABLE review (
    review_id VARCHAR2(15),
    review_code VARCHAR2(15),
    rating INT NOT NULL,  
    "comment" VARCHAR2(50) NOT NULL,  
    "date" DATE NOT NULL,  
    status INT NOT NULL,  
    host_response VARCHAR2(50) NOT NULL,  
    sentiment VARCHAR2(50) NOT NULL,  
    visibility VARCHAR2(50) NOT NULL,  
    edited VARCHAR2(50) NOT NULL,  
    helpful_votes_count INT NOT NULL,  
    booking_id VARCHAR2(15) NOT NULL,  
    booking_code VARCHAR2(15) NOT NULL,  
    guest_id VARCHAR2(15) NOT NULL,  
    platform VARCHAR2(15) NOT NULL,  
    property_id VARCHAR2(15) NOT NULL,  
    branch_code VARCHAR2(10) NOT NULL,  
    room_id VARCHAR2(15) NOT NULL,  
    room_code VARCHAR2(15) NOT NULL,
    host_id VARCHAR2(15) NOT NULL,  
    profile_class VARCHAR2(15) NOT NULL,
    amenity_id VARCHAR2(15) NOT NULL,
    amenity_code VARCHAR2(15) NOT NULL,   
    PRIMARY KEY (review_id, review_code),
    FOREIGN KEY (booking_id, booking_code) REFERENCES booking(booking_id, booking_code),  
    FOREIGN KEY (guest_id, platform) REFERENCES guest(guest_id, platform),  
    FOREIGN KEY (property_id, branch_code) REFERENCES property(property_id, branch_code),  
    FOREIGN KEY (room_id, room_code) REFERENCES room(room_id, room_code),
    FOREIGN KEY (host_id, profile_class) REFERENCES host(host_id, profile_class),
    FOREIGN KEY (amenity_id, amenity_code) REFERENCES amenity(amenity_id, amenity_code)
);

/* ===============================
   MAINTENANCE_REQUEST
================================= */
prompt
prompt Attempting to create table maintenance_request

CREATE TABLE maintenance_request (
    request_id VARCHAR2(15),
    request_code VARCHAR2(15),
    summary VARCHAR2(500) NOT NULL, 
    issue_type VARCHAR2(100) NOT NULL,  
    description VARCHAR2(100) NOT NULL,  
    priority_level INT NOT NULL,  
    request_date DATE NOT NULL,  
    request_status NUMBER(1) NOT NULL,  
    preferred_visit_time VARCHAR2(50) NOT NULL,  
    completion_date DATE NOT NULL,  
    estimated_cost NUMBER(10,2) NOT NULL,  
    amenity_id VARCHAR2(15) NOT NULL,  
    amenity_code VARCHAR2(15) NOT NULL,  
    host_id VARCHAR2(15) NOT NULL,  
    profile_class VARCHAR2(15) NOT NULL,  
    room_id VARCHAR2(15) NOT NULL,
    room_code VARCHAR2(15) NOT NULL,
    property_id VARCHAR2(15) NOT NULL,   
    branch_code VARCHAR2(10) NOT NULL,   
    PRIMARY KEY (request_id, request_code),  
    FOREIGN KEY (amenity_id, amenity_code) REFERENCES amenity(amenity_id, amenity_code),  
    FOREIGN KEY (host_id, profile_class) REFERENCES host(host_id, profile_class),
    FOREIGN KEY (room_id, room_code) REFERENCES room(room_id, room_code),
    FOREIGN KEY (property_id, branch_code) REFERENCES property(property_id, branch_code)
);

/* ===============================
   MAINTENANCE_TASK
================================= */
prompt
prompt Attempting to create table maintenance_task

CREATE TABLE maintenance_task (
    task_id VARCHAR2(15),
    task_code VARCHAR2(15),
    description VARCHAR2(50) NOT NULL,   
    completion_percentage VARCHAR2(15) NOT NULL,   
    start_date DATE NOT NULL,   
    end_date DATE NOT NULL,   
    cost_required DECIMAL NOT NULL,   
    task_status INT NOT NULL,   
    day_spent INT NOT NULL,   
    remarks VARCHAR2(100) NOT NULL,   
    is_warranty NUMBER(1) NOT NULL,   
    property_id VARCHAR2(15) NOT NULL,   
    branch_code VARCHAR2(10) NOT NULL,   
    room_id VARCHAR2(15) NOT NULL,   
    room_code VARCHAR2(15) NOT NULL,   
    request_id VARCHAR2(15) NOT NULL,   
    request_code VARCHAR2(15) NOT NULL,
    earning_id VARCHAR2(15) NOT NULL,
    earning_period_code VARCHAR2(15) NOT NULL,  
    PRIMARY KEY (task_id, task_code),   
    FOREIGN KEY (property_id, branch_code) REFERENCES property(property_id, branch_code),   
    FOREIGN KEY (room_id, room_code) REFERENCES room(room_id, room_code),   
    FOREIGN KEY (request_id, request_code) REFERENCES maintenance_request(request_id, request_code),
    FOREIGN KEY (earning_id, earning_period_code) REFERENCES earning(earning_id, earning_period_code)   
);

/* ===============================
   OCUUPANCY_REPORT
================================= */
prompt
prompt Attempting to create table occupancy_report

CREATE TABLE occupancy_report (
    report_id VARCHAR2(15),
    report_period_code VARCHAR2(15),
    month INT NOT NULL,  
    year INT NOT NULL,  
    total_night INT NOT NULL,  
    booked_night INT NOT NULL,  
    occupancy_rate FLOAT NOT NULL,  
    average_price NUMBER(10,2) NOT NULL,  
    revenue_generated NUMBER(10,2) NOT NULL,  
    created_date date NOT NULL,  
    cancellation_rate NUMBER(10,2) NOT NULL,  
    property_id VARCHAR2(15) NOT NULL,  
    branch_code VARCHAR2(10) NOT NULL,  
    room_id VARCHAR2(15) NOT NULL,  
    room_code VARCHAR2(15) NOT NULL,
    host_id VARCHAR2(15) NOT NULL,  
    profile_class VARCHAR2(15) NOT NULL, 
    PRIMARY KEY (report_id, report_period_code),  
    FOREIGN KEY (property_id, branch_code) REFERENCES property(property_id, branch_code),  
    FOREIGN KEY (room_id, room_code) REFERENCES room(room_id, room_code),
    FOREIGN KEY (host_id, profile_class) REFERENCES host(host_id, profile_class)
);



/* ============================= EXPLOSION ============================= */

/* ===============================
   AMENITY_PAYMENT
================================= */
prompt
prompt Attempting to create table amenity_payment

CREATE TABLE amenity_payment (
    amenity_id VARCHAR2(15),
    amenity_code VARCHAR2(15),
    payment_id VARCHAR2(15),
    payment_ref VARCHAR2(15),
    PRIMARY KEY (amenity_id, amenity_code, payment_id, payment_ref),
    FOREIGN KEY (amenity_id, amenity_code) REFERENCES amenity(amenity_id, amenity_code),
    FOREIGN KEY (payment_id, payment_ref) REFERENCES payment(payment_id, payment_ref)
);

/* ===============================
   ROOM_AMENITY
================================= */
prompt
prompt Attempting to create table room_amenity

CREATE TABLE room_amenity (
    room_id VARCHAR2(15),
    room_code VARCHAR2(15),
    amenity_id VARCHAR2(15),
    amenity_code VARCHAR2(15),
    PRIMARY KEY (room_id, room_code, amenity_id, amenity_code),
    FOREIGN KEY (room_id, room_code) REFERENCES room(room_id, room_code),
    FOREIGN KEY (amenity_id, amenity_code) REFERENCES amenity(amenity_id, amenity_code)
);

/* ===============================
   PROPERTY_AMENITY
================================= */
prompt
prompt Attempting to create table property_amenity

CREATE TABLE property_amenity (
    property_id VARCHAR2(15),
    branch_code VARCHAR2(15),
    amenity_id VARCHAR2(15),
    amenity_code VARCHAR2(15),
    PRIMARY KEY (property_id, branch_code, amenity_id, amenity_code),  
    FOREIGN KEY (property_id, branch_code) REFERENCES property(property_id, branch_code),  
    FOREIGN KEY (amenity_id, amenity_code) REFERENCES amenity(amenity_id, amenity_code)  
);

/* ===============================
   GUEST_AMENITY
================================= */
prompt
prompt Attempting to create table guest_amenity

CREATE TABLE guest_amenity (
    guest_id VARCHAR2(15),
    platform VARCHAR2(15),
    amenity_id VARCHAR2(15),
    amenity_code VARCHAR2(15),
    PRIMARY KEY (guest_id, platform, amenity_id, amenity_code),  
    FOREIGN KEY (guest_id, platform) REFERENCES guest(guest_id, platform),  
    FOREIGN KEY (amenity_id, amenity_code) REFERENCES amenity(amenity_id, amenity_code)  
);

/* ===============================
   HOST_AMENITY
================================= */
prompt
prompt Attempting to create table host_amenity

CREATE TABLE host_amenity (
    host_id VARCHAR2(15),
    profile_class VARCHAR2(15),
    amenity_id VARCHAR2(15),
    amenity_code VARCHAR2(15),
    PRIMARY KEY (host_id, profile_class, amenity_id, amenity_code),
    FOREIGN KEY (host_id, profile_class) REFERENCES host(host_id, profile_class),  
    FOREIGN KEY (amenity_id, amenity_code) REFERENCES amenity(amenity_id, amenity_code)  
);

/* ===============================
   HOST_POLICY
================================= */
prompt
prompt Attempting to create table host_policy

CREATE TABLE host_policy (
    host_id VARCHAR2(15),
    profile_class VARCHAR2(15),
    policy_id VARCHAR2(15),
    policy_code VARCHAR2(15),
    PRIMARY KEY (host_id, profile_class, policy_id, policy_code),
    FOREIGN KEY (host_id, profile_class) REFERENCES host(host_id, profile_class),  
    FOREIGN KEY (policy_id, policy_code) REFERENCES policy(policy_id, policy_code)  
);

/* ===============================
   OCCUPANCY_REPORT_CANCELLATION
================================= */
prompt
prompt Attempting to create table occupancy_report_cancellation

CREATE TABLE occupancy_report_cancellation (
    report_id VARCHAR2(15),
    report_period_code VARCHAR2(15),
    cancellation_id VARCHAR2(15),
    cancellation_ref VARCHAR2(15),
    PRIMARY KEY (report_id, report_period_code, cancellation_id, cancellation_ref),  
    FOREIGN KEY (report_id, report_period_code) REFERENCES occupancy_report(report_id, report_period_code),
    FOREIGN KEY (cancellation_id, cancellation_ref) REFERENCES cancellation(cancellation_id, cancellation_ref)  
);

/* ===============================
   STAFF_MAINTENANCE_TASK
================================= */
prompt
prompt Attempting to create table staff_maintenance_task

CREATE TABLE staff_maintenance_task (
    staff_id VARCHAR2(15),
    employment_mode VARCHAR2(15),
    task_id VARCHAR2(15),
    task_code VARCHAR2(15),
    PRIMARY KEY (staff_id, employment_mode, task_id, task_code),
    FOREIGN KEY (staff_id, employment_mode) REFERENCES staff(staff_id, employment_mode),  
    FOREIGN KEY (task_id, task_code) REFERENCES maintenance_task(task_id, task_code)  
);

/* ===============================
   ROOM_POLICY
================================= */
prompt
prompt Attempting to create table room_policy

CREATE TABLE room_policy (
    room_id VARCHAR2(15),
    room_code VARCHAR2(15),
    policy_id VARCHAR2(15),
    policy_code VARCHAR2(15),
    PRIMARY KEY (room_id, room_code, policy_id, policy_code),
    FOREIGN KEY (room_id, room_code) REFERENCES room(room_id, room_code),
    FOREIGN KEY (policy_id, policy_code) REFERENCES policy(policy_id, policy_code)
);

/* ===============================
   GUEST_POLICY
================================= */
prompt
prompt Attempting to create table guest_policy

CREATE TABLE guest_policy (
    guest_id VARCHAR2(15),
    platform VARCHAR2(15),
    policy_id VARCHAR2(15),
    policy_code VARCHAR2(15),
    PRIMARY KEY (guest_id, platform, policy_id, policy_code),
    FOREIGN KEY (guest_id, platform) REFERENCES guest(guest_id, platform),
    FOREIGN KEY (policy_id, policy_code) REFERENCES policy(policy_id, policy_code)
);

/* ===============================
   PROPERTY_POLICY
================================= */
prompt
prompt Attempting to create table property_policy

CREATE TABLE property_policy (
    property_id VARCHAR2(15),
    branch_code VARCHAR2(15),
    policy_id VARCHAR2(15),
    policy_code VARCHAR2(15),
    PRIMARY KEY (property_id, branch_code, policy_id, policy_code),
    FOREIGN KEY (property_id, branch_code) REFERENCES property(property_id, branch_code),
    FOREIGN KEY (policy_id, policy_code) REFERENCES policy(policy_id, policy_code)
);

/* ===============================
   HOST_STAFF_ROLE
================================= */
prompt
prompt Attempting to create table host_staff_role

CREATE TABLE host_staff_role (
    host_id VARCHAR2(15),
    profile_class VARCHAR2(15),
    role_id VARCHAR2(15),
    role_code VARCHAR2(15),
    PRIMARY KEY (host_id, profile_class, role_id, role_code),
    FOREIGN KEY (host_id, profile_class) REFERENCES host(host_id, profile_class),
    FOREIGN KEY (role_id, role_code) REFERENCES staff_role(role_id, role_code)
);

/* ===============================
   OCCUPANCY_REPORT_BOOKING
================================= */
prompt
prompt Attempting to create table occupancy_report_booking

CREATE TABLE occupancy_report_booking (
    report_id VARCHAR2(15),
    report_period_code VARCHAR2(15),
    booking_id VARCHAR2(15),
    booking_code VARCHAR2(15),
    PRIMARY KEY (report_id, report_period_code, booking_id, booking_code),
    FOREIGN KEY (report_id, report_period_code) REFERENCES occupancy_report(report_id, report_period_code),
    FOREIGN KEY (booking_id, booking_code) REFERENCES booking(booking_id, booking_code)
);

/* ===============================
   GUEST_PROPERTY
================================= */
prompt
prompt Attempting to create table guest_property

CREATE TABLE guest_property (
    guest_id VARCHAR2(15),
    platform VARCHAR2(15),
    property_id VARCHAR2(15),
    branch_code VARCHAR2(15),
    PRIMARY KEY (guest_id, platform, property_id, branch_code),
    FOREIGN KEY (guest_id, platform) REFERENCES guest(guest_id, platform),
    FOREIGN KEY (property_id, branch_code) REFERENCES property(property_id, branch_code)
);

/* ===============================
   USER_USER
================================= */
prompt
prompt Attempting to create table user_user

CREATE TABLE user_user (
    user1_id VARCHAR2(15),
    user1_category VARCHAR2(15),
    user2_id VARCHAR2(15),
    user2_category VARCHAR2(15),
    PRIMARY KEY (user1_id, user1_category, user2_id, user2_category),
    FOREIGN KEY (user1_id, user1_category) REFERENCES "user"(user_id, user_category),
    FOREIGN KEY (user2_id, user2_category) REFERENCES "user"(user_id, user_category)
);
