-- TABELA FATO

-- Tabela ft_atendimento

CREATE TABLE public.ft_atendimento (
	sk_tempo int4 NOT NULL,
	sk_ticket int4 NOT NULL,
	sk_servico int4 NOT NULL,
	sk_usuario int4 NOT NULL
);

-- TABELA DIMENSÃO

-- Tabela dim_ticket

CREATE TABLE public.dim_ticket (
	sk_ticket serial NOT NULL DEFAULT nextval('dim_ticket_sk_ticket_seq'::regclass),
	nk_ticket int4 NOT NULL,
	numero_ticket varchar(50) NOT NULL,
	titulo_ticket varchar(255) NULL,
	nm_fila_ticket varchar(200) NULL,
	nm_tipo_ticket varchar(200) NOT NULL,
	nm_servico_ticket varchar(200) NOT NULL,
	nm_sistema_ticket varchar(100) NOT NULL,
	nm_setor_ticket varchar(5) NOT NULL,
	nm_prioridade_ticket varchar(200) NOT NULL,
	nm_estado_ticket varchar(200) NULL,
	dt_criacao_ticket date NOT NULL,
	nm_usuario_atendente varchar(200) NULL,
	dt_alteracao_ticket date NOT NULL,
	nota_pesquisa_ticket varchar(2) NULL,
	tempo_atendimento_ticket numeric NOT NULL,
	CONSTRAINT sk_ticket PRIMARY KEY (sk_ticket)
);

-- Tabela dim_servico

CREATE TABLE public.dim_servico (
	sk_servico serial NOT NULL DEFAULT nextval('dim_servico_sk_servico_seq'::regclass),
	nk_servico int4 NOT NULL,
	nm_servico varchar(200) NOT NULL,
	criticalidade_servico varchar(200) NULL,
	CONSTRAINT sk_servico PRIMARY KEY (sk_servico)
);


-- Tabela dim_usuario

CREATE TABLE public.dim_usuario (
	sk_usuario serial NOT NULL DEFAULT nextval('dim_usuario_sk_usuario_seq'::regclass),
	nk_usuario int4 NOT NULL,
	login_usuario varchar(200) NOT NULL,
	nome_usuario varchar(100) NOT NULL,
	CONSTRAINT sk_usuario PRIMARY KEY (sk_usuario)
);
-- Tabel dim_data

CREATE TABLE public.dim_data (
	sk_data int4 NOT NULL DEFAULT nextval('dim_tempo_sk_tempo_seq'::regclass),
	"data" date NOT NULL,
	desc_datacompleta varchar(60) NOT NULL,
	nr_ano int4 NOT NULL,
	nm_trimestre varchar(20) NOT NULL,
	nr_ano_trimestre varchar(20) NOT NULL,
	nr_mes int4 NOT NULL,
	nm_mes varchar(20) NOT NULL,
	ano_mes varchar(20) NOT NULL,
	nr_semana int4 NOT NULL,
	ano_semana varchar(20) NOT NULL,
	nr_dia int4 NOT NULL,
	nr_dia_ano int4 NOT NULL,
	nm_dia_semana varchar(20) NOT NULL,
	flag_final_semana bpchar(3) NOT NULL,
	flag_feriado bpchar(3) NOT NULL,
	nm_feriado varchar(60) NOT NULL,
	dt_carga timestamp NOT NULL,
	CONSTRAINT sk_tempo PRIMARY KEY (sk_data)
);