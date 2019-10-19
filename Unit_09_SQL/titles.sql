-- Table: public.titles

-- DROP TABLE public.titles;

CREATE TABLE public.titles
(
    emp_no integer,
    title character varying(30) COLLATE pg_catalog."default",
    from_date date,
    to_date date
)


TABLESPACE pg_default;

ALTER TABLE public.titles
    OWNER to postgres;