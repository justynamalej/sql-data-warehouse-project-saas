IF OBJECT_ID ('bronze.accounts_raw_v2', 'U') IS NOT NULL
	DROP TABLE bronze.accounts_raw_v2;

CREATE TABLE bronze.accounts_raw_v2 (
	contract_start_dt DATE,
	region_cd VARCHAR(50),
	health_score_val FLOAT,
	company_size VARCHAR(50),
	acct_nm VARCHAR(50),
	acct_mgr_nam VARCHAR(50),
	created_at DATE,
	account_status VARCHAR(50),
	svc_mgr_nm VARCHAR(50),
	exp_mrr_amt FLOAT,
	contract_end_dt DATE,
	updated_at DATE,
	lifecycle_cd VARCHAR(50),
	signup_src_cd VARCHAR(50),
	country VARCHAR(50),
	industry VARCHAR(50),
	acct_type_cd VARCHAR(50),
	acct_id VARCHAR(50)
);

IF OBJECT_ID ('bronze.employees_raw', 'U') IS NOT NULL
	DROP TABLE bronze.employees_raw;

CREATE TABLE bronze.employees_raw (
	emp_id VARCHAR(50),
	emp_full_nm VARCHAR(50),
	role_cd VARCHAR(50),
	dept_cd VARCHAR(50),
	email_addr VARCHAR(50),
	location_txt VARCHAR(50),
	employment_status_cd VARCHAR(50),
	hire_dt DATE,
	termination_dt DATE,
	mgr_emp_id VARCHAR(50),
	record_src_cd VARCHAR(50),
	created_ts DATE,
	updated_ts DATE
);

IF OBJECT_ID ('bronze.invoices_raw_v2', 'U') IS NOT NULL
	DROP TABLE bronze.invoices_raw_v2;

CREATE TABLE bronze.invoices_raw_v2 (
	subtotal_amt FLOAT,
	billing_period_start DATE,
	created_at DATE,
	currency VARCHAR(50),
	line_item_cnt FLOAT,
	invoice_id VARCHAR(50),
	invoice_date DATE,
	invoice_status VARCHAR(50),
	amount_paid FLOAT,
	discount_amt FLOAT,
	paid_dt DATE,
	invoice_num VARCHAR(50),
	writeoff_flg VARCHAR(50),
	acct_id VARCHAR(50),
	subscription_id INT,
	billing_period_end DATE,
	total_amt FLOAT,
	amount_due FLOAT,
	billing_freq_cd VARCHAR(50),
	due_dt DATE,
	proration_flg VARCHAR(50),
	tax_amt FLOAT
);

