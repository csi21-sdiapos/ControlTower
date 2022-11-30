--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: dlk_informacional; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA dlk_informacional;


ALTER SCHEMA dlk_informacional OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: dlk_cat_acc_empleados; Type: TABLE; Schema: dlk_informacional; Owner: postgres
--

CREATE TABLE dlk_informacional.dlk_cat_acc_empleados (
    md_uuid character varying NOT NULL,
    md_date timestamp without time zone NOT NULL,
    cod_empleado character varying(7) NOT NULL,
    clave_empleado character varying NOT NULL,
    nivel_acceso_empleado smallint NOT NULL
);


ALTER TABLE dlk_informacional.dlk_cat_acc_empleados OWNER TO postgres;

--
-- Data for Name: dlk_cat_acc_empleados; Type: TABLE DATA; Schema: dlk_informacional; Owner: postgres
--

INSERT INTO dlk_informacional.dlk_cat_acc_empleados VALUES ('1', '2022-11-25 00:00:00', 'User1', 'Clave1', 1);
INSERT INTO dlk_informacional.dlk_cat_acc_empleados VALUES ('2', '2022-11-25 00:00:00', 'User2', 'Clave2', 1);
INSERT INTO dlk_informacional.dlk_cat_acc_empleados VALUES ('3', '2022-11-25 00:00:00', 'User3', 'Clave3', 2);
INSERT INTO dlk_informacional.dlk_cat_acc_empleados VALUES ('4', '2022-11-25 00:00:00', 'User4', 'Clave4', 2);


--
-- Name: dlk_cat_acc_empleados dlk_informacional_pkey; Type: CONSTRAINT; Schema: dlk_informacional; Owner: postgres
--

ALTER TABLE ONLY dlk_informacional.dlk_cat_acc_empleados
    ADD CONSTRAINT dlk_informacional_pkey PRIMARY KEY (cod_empleado);


--
-- PostgreSQL database dump complete
--

