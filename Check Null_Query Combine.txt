SELECT 
    COUNT(*) AS total_rows,
    SUM(CASE WHEN transaction_id IS NULL THEN 1 ELSE 0 END) AS null_transaction_id,
    SUM(CASE WHEN date IS NULL THEN 1 ELSE 0 END) AS null_date,
    SUM(CASE WHEN branch_id IS NULL THEN 1 ELSE 0 END) AS null_branch_id,
    SUM(CASE WHEN branch_name IS NULL THEN 1 ELSE 0 END) AS null_branch_name,
    SUM(CASE WHEN kota IS NULL THEN 1 ELSE 0 END) AS null_kota,
    SUM(CASE WHEN provinsi IS NULL THEN 1 ELSE 0 END) AS null_provinsi,
    SUM(CASE WHEN rating_cabang IS NULL THEN 1 ELSE 0 END) AS null_rating_cabang,
    SUM(CASE WHEN customer_name IS NULL THEN 1 ELSE 0 END) AS null_customer_name,
    SUM(CASE WHEN product_id IS NULL THEN 1 ELSE 0 END) AS null_product_id,
    SUM(CASE WHEN product_name IS NULL THEN 1 ELSE 0 END) AS null_product_name,
    SUM(CASE WHEN actual_price IS NULL THEN 1 ELSE 0 END) AS null_actual_price,
    SUM(CASE WHEN discount_percentage IS NULL THEN 1 ELSE 0 END) AS null_discount_percentage,
    SUM(CASE WHEN persentase_gross_laba IS NULL THEN 1 ELSE 0 END) AS null_persentase_gross_laba,
    SUM(CASE WHEN nett_sales IS NULL THEN 1 ELSE 0 END) AS null_nett_sales,
    SUM(CASE WHEN nett_profit IS NULL THEN 1 ELSE 0 END) AS null_nett_profit,
    SUM(CASE WHEN rating_transaksi IS NULL THEN 1 ELSE 0 END) AS null_rating_transaksi
FROM 
    `rakamin-kf-analytics-448409.kimia_farma.kf_combined_query`;
