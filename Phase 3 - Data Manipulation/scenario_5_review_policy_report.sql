SET LINESIZE 200
SET PAGESIZE 100
SET COLSEP ' | '
SET TRIMSPOOL ON
SET WRAP OFF

COLUMN review_id      FORMAT A10 HEADING 'REVIEW_ID'
COLUMN policy_id      FORMAT A10 HEADING 'POLICY_ID'
COLUMN report_id      FORMAT A10 HEADING 'REPORT_ID'
COLUMN review_policy  FORMAT A70 HEADING 'REVIEW_POLICY_INFO'

CREATE OR REPLACE VIEW view_review_policy_report AS
SELECT
    r.review_id,
    p.policy_id,
    o.report_id,
    r."comment" || ' - ' || p.policy_type AS review_policy
FROM review r
JOIN property pr
    ON r.property_id = pr.property_id
   AND r.branch_code = pr.branch_code
JOIN occupancy_report o
    ON pr.property_id = o.property_id
   AND pr.branch_code = o.branch_code
JOIN property_policy pp
    ON pr.property_id = pp.property_id
   AND pr.branch_code = pp.branch_code
JOIN policy p
    ON pp.policy_id = p.policy_id
   AND pp.policy_code = p.policy_code
WHERE o.month = 1;

SELECT *
FROM view_review_policy_report;