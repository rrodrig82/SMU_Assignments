-- Table: public.departments

-- DROP TABLE public.departments;

CREATE TABLE public.departments
(
    dept_no character varying(10) COLLATE pg_catalog."default",
    dept_name character varying(30) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE public.departments
    OWNER to postgres;
