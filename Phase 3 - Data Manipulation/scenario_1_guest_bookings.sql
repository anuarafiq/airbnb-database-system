COLUMN FULL_NAME          FORMAT A30;
COLUMN BOOKING_ID         FORMAT A10;

SELECT 
    g.full_name, 
    b.booking_id
FROM 
    guest g
JOIN 
    booking b 
    ON g.guest_id = b.guest_id 
    AND g.platform = b.platform
WHERE 
    g.preferred_language = 'English' 
    AND b.booking_status = 1;