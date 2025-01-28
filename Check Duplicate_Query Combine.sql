WITH DuplicateCheck AS (
    SELECT 
        transaction_id,
        COUNT(*) AS count
    FROM 
        `rakamin-kf-analytics-448409.kimia_farma.kf_combined_query`
    GROUP BY 
        transaction_id
    HAVING 
        COUNT(*) > 1
)

SELECT COUNT(*) FROM DuplicateCheck AS total_duplicates