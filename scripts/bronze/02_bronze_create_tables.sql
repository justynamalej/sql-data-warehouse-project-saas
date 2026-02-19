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

IF OBJECT_ID ('bronze.payments_raw_v2', 'U') IS NOT NULL
	DROP TABLE bronze.payments_raw_v2;

CREATE TABLE bronze.payments_raw_v2 (
	pmt_id VARCHAR(50),
	inv_id VARCHAR(50),
	acct_id VARCHAR(50),
	sub_id VARCHAR(50),
	pmt_amt FLOAT,
	pmt_ccy VARCHAR(50),
	fx_rt FLOAT,
	net_pmt_amt FLOAT,
	fee_amt FLOAT,
	pmt_method_cd VARCHAR(50),
	pmt_provider_cd VARCHAR(50),
	pmt_type_cd VARCHAR(50),
	retry_flg INT,
	attempt_nbr INT,
	pmt_ts DATETIME,
	settle_dt DATE,
	fail_dt DATE,
	refund_dt DATE,
	pmt_status_cd VARCHAR(50),
	reconciled_flg FLOAT,
	manual_adj_flg INT,
	chargeback_flg INT,
	created_by_sys VARCHAR(50),
	last_upd_ts DATETIME,
	notes_txt VARCHAR(50)
);

IF OBJECT_ID ('bronze.plan_change_events_raw_v2', 'U') IS NOT NULL
	DROP TABLE bronze.plan_change_events_raw_v2;

CREATE TABLE bronze.plan_change_events_raw_v2 (
	evt_id VARCHAR(50),
	acct_id VARCHAR(50),
	sub_id VARCHAR(50),
	usr_id VARCHAR(50),
	old_plan_cd VARCHAR(50),
	new_plan_cd VARCHAR(50),
	chg_type_cd VARCHAR(50),
	chg_reason_cd VARCHAR(50),
	req_channel_cd VARCHAR(50),
	old_mrr_amt FLOAT,
	new_mrr_amt FLOAT,
	mrr_delta_amt FLOAT,
	proration_amt FLOAT,
	evt_ts DATETIME,
	eff_dt DATE,
	proc_ts DATETIME,
	evt_status_cd VARCHAR(50),
	rollback_flg INT,
	manual_override_flg INT,
	billing_impact_flg INT,
	src_sys_cd VARCHAR(50),
	notes_txt VARCHAR(50),
	last_upd_ts DATETIME
);

IF OBJECT_ID ('bronze.plans_raw_v2', 'U') IS NOT NULL
	DROP TABLE bronze.plans_raw_v2;

CREATE TABLE bronze.plans_raw_v2 (
	plan_id VARCHAR(50),
	plan_cd VARCHAR(50),
	plan_grp_cd VARCHAR(50),
	parent_plan_cd VARCHAR(50),
	list_price_amt FLOAT,
	bill_freq_cd VARCHAR(50),
	currency_cd VARCHAR(50),
	setup_fee_amt FLOAT,
	overage_rate_amt FLOAT,
	min_commit_amt FLOAT,
	seat_limit_nbr FLOAT,
	usage_cap_qty FLOAT,
	trial_days_nbr FLOAT,
	auto_renew_flg INT,
	proration_allowed_flg INT,
	eff_start_dt DATE,
	eff_end_dt DATE,
	plan_status_cd VARCHAR(50),
	version_nbr INT,
	grandfathered_flg INT,
	created_sys_cd VARCHAR(50),
	last_upd_ts DATETIME,
	notes_txt VARCHAR(50)
);

IF OBJECT_ID ('bronze.subscriptions_raw_v2', 'U') IS NOT NULL
	DROP TABLE bronze.subscriptions_raw_v2;

CREATE TABLE bronze.subscriptions_raw_v2 (
	sub_id VARCHAR(50),
	acct_id VARCHAR(50),
	plan_id VARCHAR(50),
	plan_cd VARCHAR(50),
	usr_id VARCHAR(50),
	sub_start_dt DATE,
	sub_end_dt DATE,
	cancel_dt DATE,
	trial_end_dt DATE,
	sub_status_cd VARCHAR(50),
	auto_renew_flg INT,
	grace_period_flg INT,
	billable_flg INT,
	manual_override_flg INT,
	mrr_amt FLOAT,
	currency_cd VARCHAR(50),
	billing_freq_cd VARCHAR(50),
	seat_qty FLOAT,
	discount_pct FLOAT,
	contract_term_mo FLOAT,
	last_plan_chg_dt DATE,
	orig_plan_cd VARCHAR(50),
	chg_cnt INT,
	linked_sub_id VARCHAR(50),
	created_sys_cd VARCHAR(50),
	created_ts DATETIME,
	last_upd_ts DATETIME,
	notes_txt VARCHAR(50)
);
