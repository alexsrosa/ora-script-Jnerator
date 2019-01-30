/**********************************************************************************
* Descrição: Script de remoção da table #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome tabela@Nome tabela. Ex.: TA_HISTORICO_EVENTO}
* Autor: #{Autor@Digite o nome do Autor}
* Data Criação: #{Data@Coloque a data de criação@@date}
**********************************************************************************/

-----------------------------
-- #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome tabela@Nome tabela. Ex.: TA_HISTORICO_EVENTO}
-----------------------------
set serveroutput on
prompt "[LOG] >>>>>> Executando script de remoção da tabela #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome tabela@Nome tabela. Ex.: TA_HISTORICO_EVENTO}"

DECLARE
    TABLE_NOT_EXISTS EXCEPTION;
    PRAGMA EXCEPTION_INIT (TABLE_NOT_EXISTS , -00942);
BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome tabela@Nome tabela. Ex.: TA_HISTORICO_EVENTO} CASCADE CONSTRAINTS';

    DBMS_OUTPUT.PUT_LINE('[SUCCESS] A tabela #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome tabela@Nome tabela. Ex.: TA_HISTORICO_EVENTO} foi removida com sucesso!');

EXCEPTION
    WHEN TABLE_NOT_EXISTS THEN
        DBMS_OUTPUT.PUT_LINE('[WARN] A tabela #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome tabela@Nome tabela. Ex.: TA_HISTORICO_EVENTO} que está sendo removida já não existe no banco.');
END;
/

prompt "[LOG] <<<<<< Fim da execução do script de remoção da tabela #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome tabela@Nome tabela. Ex.: TA_HISTORICO_EVENTO}"