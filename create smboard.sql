create table smboard
	(timestamp String,
	user String,
	communication_number UInt32,
	communication_id Decimal (9, 1),
	script_id String,
	script_name String,
	mrf String,
	client_mrf String,
	script_owner String,
	current_script_owner String,
	script_responsible String,
	current_script_responsible String,
	crm_departament String,
	ACCOUNT_NUMBER String,
	CALLER_ID String,
	COMMUNICATION_THEME String,
	COMMUNICATION_DETAIL String,
	COMMUNICATION_RESULT String)
order by timestamp