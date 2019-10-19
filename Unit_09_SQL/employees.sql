-- Table: public.employees

-- DROP TABLE public.employees;

CREATE TABLE public.employees
(
    emp_no integer,
    birth_date date,
    first_name character varying(20) COLLATE pg_catalog."default",
    last_name character varying(20) COLLATE pg_catalog."default",
    gender character varying(10) COLLATE pg_catalog."default",
    hire_date date
)

TABLESPACE pg_default;

ALTER TABLE public.employees
    OWNER to postgres;
	