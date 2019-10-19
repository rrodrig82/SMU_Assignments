-- Table: public.salaries

-- DROP TABLE public.salaries;

CREATE TABLE public.salaries
(
    emp_no integer,
    salary integer,
    from_date date,
    to_date date
)


TABLESPACE pg_default;

ALTER TABLE public.salaries
    OWNER to postgres;