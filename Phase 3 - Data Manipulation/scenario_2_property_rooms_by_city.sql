SET LINESIZE 200
SET PAGESIZE 1000
SET COLSEP ' | '

COLUMN city FORMAT A20 HEADING 'City'
COLUMN type_name FORMAT A20 HEADING 'Property Type'
COLUMN profile_class FORMAT A15 HEADING 'Host Class'
COLUMN total_rooms FORMAT 999 HEADING 'Total Rooms'

SELECT
    p.city,
    pt.type_name,
    h.profile_class,
    COUNT(r.room_id) AS total_rooms
FROM
    property p
JOIN
    property_type pt
    ON p.property_type_id = pt.property_type_id
   AND p.type_code = pt.type_code
JOIN
    room r
    ON p.property_id = r.property_id
   AND p.branch_code = r.branch_code
JOIN
    host h
    ON p.host_id = h.host_id
   AND p.profile_class = h.profile_class
WHERE
    p.state = 'Selangor'
    AND pt.status = 'Inactive'
    AND h.preferred_payout_method = 'Bank Transfer'
GROUP BY
    p.city,
    pt.type_name,
    h.profile_class;