/**********************************************************************************
* Descrição: Script de criação de da sequence #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome Sequence@Nome Sequence. Ex.: SQ_HISTORICO_EVENTO}
* Autor: #{Autor@Digite o nome do Autor}
* Data Criação: #{Data@Coloque a data de criação@@date}
**********************************************************************************/

-----------------------------
-- #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome Sequence@Nome Sequence. Ex.: SQ_HISTORICO_EVENTO}
-----------------------------
set serveroutput on
prompt "[LOG] >>>>>> Executando script de criação da sequence #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome Sequence@Nome Sequence. Ex.: SQ_HISTORICO_EVENTO}"

DECLARE
    SEQUENCE_EXISTS EXCEPTION;
    PRAGMA EXCEPTION_INIT (SEQUENCE_EXISTS , -00955);
BEGIN
    EXECUTE IMMEDIATE 'CREATE SEQUENCE #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome Sequence@Nome Sequence. Ex.: SQ_HISTORICO_EVENTO}';

    DBMS_OUTPUT.PUT_LINE('[SUCCESS] A sequence #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome Sequence@Nome Sequence. Ex.: SQ_HISTORICO_EVENTO} foi incluída com sucesso!');

EXCEPTION
    WHEN SEQUENCE_EXISTS THEN
        DBMS_OUTPUT.PUT_LINE('[WARN] A sequence #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome Sequence@Nome Sequence. Ex.: SQ_HISTORICO_EVENTO} que está sendo incluída já existe no banco.');
END;
/

prompt "[LOG] <<<<<< Fim da execucao do script de criação da sequence #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome Sequence@Nome Sequence. Ex.: SQ_HISTORICO_EVENTO}"