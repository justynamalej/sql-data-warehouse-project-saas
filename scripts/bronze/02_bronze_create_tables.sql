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
