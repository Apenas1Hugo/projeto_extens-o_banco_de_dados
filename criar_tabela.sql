CREATE TABLE IF NOT EXISTS public.produtos
(
    cod_produto integer NOT NULL,
    nome_produto character varying(100) COLLATE pg_catalog."default" NOT NULL,
    qtd_produto smallint DEFAULT 0,
    valor_und numeric,
    data_validade date,
    CONSTRAINT produtos_pkey PRIMARY KEY (cod_produto),
    CONSTRAINT produtos_valor_und_check CHECK (valor_und > 0::numeric)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.produtos
    OWNER to postgres;