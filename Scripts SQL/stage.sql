-- Tabela queue

CREATE TABLE public.st_queue (
	id int4 NULL,
	group_id int4 NULL,
	create_time timestamp(0) NULL,
	change_time timestamp(0) NULL,
	"name" varchar(1024) NULL,
	valid_id int4 NULL,
	"comments" varchar(250) NULL
);

-- Tabela service

CREATE TABLE public.st_service (
	id int4 NULL,
	"name" varchar(200) NULL,
	valid_id int2 NULL,
	create_time timestamp(0) NULL,
	change_time timestamp(0) NULL,
	type_id int4 NULL,
	criticality varchar(200) NULL
);

-- Tabela ticket_history

CREATE TABLE public.st_ticket_history (
	id varchar(20) NULL,
	"name" varchar(1024) NULL,
	history_type_id int2 NULL,
	ticket_id varchar(20) NULL,
	article_id int8 NULL,
	type_id int2 NULL,
	queue_id int4 NULL,
	owner_id int4 NULL,
	priority_id int2 NULL,
	state_id int2 NULL,
	create_time timestamp(0) NULL,
	create_by int4 NULL,
	change_time timestamp(0) NULL,
	change_by int4 NULL
);

-- Tabela ticket_priority

CREATE TABLE public.st_ticket_priority (
	id int2 NULL,
	"name" varchar(200) NULL,
	valid_id int2 NULL,
	create_time timestamp(0) NULL,
	change_time timestamp(0) NULL
);

-- Tabela ticket_state

CREATE TABLE public.st_ticket_state (
	id int2 NULL,
	"name" varchar(200) NULL,
	type_id int2 NULL,
	valid_id int2 NULL,
	create_time timestamp(0) NULL,
	change_time timestamp(0) NULL
);

-- Tabela ticket_type

CREATE TABLE public.st_ticket_type (
	id int2 NULL,
	"name" varchar(200) NULL,
	valid_id int2 NULL,
	create_time timestamp(0) NULL,
	change_time timestamp(0) NULL
);

-- Tabela tickets

CREATE TABLE public.st_tickets (
	id int4 NULL,
	tn varchar(200) NULL,
	title varchar(10000) NULL,
	queue_id int4 NULL,
	type_id int2 NULL,
	service_id int4 NULL,
	user_id int4 NULL,
	ticket_priority_id int2 NULL,
	ticket_state_id int2 NULL,
	create_time timestamp(0) NULL,
	create_by int4 NULL,
	change_time timestamp(0) NULL,
	change_by int4 NULL,
	tempo_atend_ticket numeric NULL,
	nm_sistema varchar(100) NULL,
	nm_servico varchar(1000) NULL,
	nm_setor varchar(3) NULL,
	nota_pesquisa_ticket varchar(2) NULL,
	nm_atendente_ticket varchar(200) NULL,
	nm_fila_ticket varchar(200) NULL,
	nm_tipo_ticket varchar(200) NULL,
	nm_prioridade_ticket varchar(200) NULL,
	nm_estado_ticket varchar(100) NULL
);

-- Tabela users

CREATE TABLE public.st_users (
	id int4 NULL,
	create_time timestamp(0) NULL,
	change_time timestamp(0) NULL
);




