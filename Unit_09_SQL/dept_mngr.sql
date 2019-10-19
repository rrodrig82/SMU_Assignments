-- Table: public.dept_manager

-- DROP TABLE public.dept_manager;

CREATE TABLE public.dept_manager
(
    dept_no character varying(10) COLLATE pg_catalog."default",
    emp_no integer,
    from_date date,
    to_date date
)

TABLESPACE pg_default;


ALTER TABLE public.dept_manager
    OWNER to postgres;