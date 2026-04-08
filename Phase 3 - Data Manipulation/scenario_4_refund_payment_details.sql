SET LINESIZE 200;
SET PAGESIZE 50;
SET FEEDBACK OFF;

COLUMN AMOUNT          FORMAT 9990.99;
COLUMN REASON          FORMAT A30;
COLUMN CURRENCY        FORMAT A8;
COLUMN SPECIAL_REQUEST FORMAT A15;
COLUMN INVOICE_STATUS  FORMAT A12;
COLUMN HEADER_NOTE     FORMAT A20;
COLUMN LOYALTY_LEVEL   FORMAT 999;
COLUMN ADDRESS         FORMAT A25;

SELECT 
    r.amount, 
    c.reason, 
    p.currency, 
    b.special_request, 
    i.invoice_status, 
    rc.header_note, 
    g.loyalty_level, 
    pr.address
FROM 
    refund r
JOIN 
    cancellation c 
    ON r.cancellation_id = c.cancellation_id 
    AND r.cancellation_ref = c.cancellation_ref
JOIN 
    payment p 
    ON r.payment_id = p.payment_id 
    AND r.payment_ref = p.payment_ref
JOIN 
    booking b 
    ON r.booking_id = b.booking_id 
    AND r.booking_code = b.booking_code
JOIN 
    invoice i 
    ON p.invoice_id = i.invoice_id 
    AND p.invoice_no = i.invoice_no
JOIN 
    receipt rc 
    ON p.payment_id = rc.payment_id 
    AND p.payment_ref = rc.payment_ref
JOIN 
    guest g 
    ON b.guest_id = g.guest_id 
    AND b.platform = g.platform
JOIN 
    property pr 
    ON b.property_id = pr.property_id 
    AND b.branch_code = pr.branch_code
WHERE 
    r.status = 'Completed'
    AND g.platform = 'Airbnb'
    AND pr.state = 'Selangor'
    AND b.guest_count = 2
    AND i.invoice_status = 'Paid'
ORDER BY r.amount DESC;