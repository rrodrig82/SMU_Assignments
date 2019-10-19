-- Table: public.dept_emp

-- DROP TABLE public.dept_emp;

CREATE TABLE public.dept_emp
(
    emp_no integer,
    dept_no character varying(10) COLLATE pg_catalog."default",
    from_date date,
    to_date date
)

TABLESPACE pg_default;

ALTER TABLE public.dept_emp
    OWNER to postgres;
	
	