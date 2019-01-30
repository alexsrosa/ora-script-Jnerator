SET SERVEROUTPUT ON
DECLARE

    comando VARCHAR2(10) := '#{Comando@ENABLE or DISABLE}'; -- ENABLE or DISABLE
    str_comando varchar2(255);
    param_cascade varchar2(255);
    debug number(1) := 1;
BEGIN
    FOR i IN (select c.constraint_name, c.table_name, c.owner from all_constraints c
              where c.table_name in (#{Lista de tabelas@'LOG_BAIRRO', 'LOG_CPC', 'LOG_FAIXA_BAI'}))
    LOOP
        select DECODE(comando, 'DISABLE', ' CASCADE ', ' ')
          into param_cascade
          from dual;

        str_comando := 'ALTER TABLE ' || i.owner || '.' || i.table_name || ' ' || comando || ' CONSTRAINT '
                         || i.constraint_name || param_cascade;

        IF (debug = 1) THEN
           DBMS_OUTPUT.PUT_LINE(str_comando);
        END IF;

        EXECUTE IMMEDIATE str_comando;

        DBMS_OUTPUT.PUT_LINE('[INFO] A tabela '|| i.table_name || ' teve a constraint ' || i.constraint_name || ' alterada para ' || comando);
    END LOOP;
EXCEPTION
   WHEN OTHERS THEN
       DBMS_OUTPUT.PUT_LINE('[ERROR] Não foi possível processar. ERRO: ' || SQLERRM);
END;
/