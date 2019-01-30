/**********************************************************************************
* Descrição: Script de remoção da sequence #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome Sequence@Nome Sequence. Ex.: SQ_HISTORICO_EVENTO}
* Autor: #{Autor@Digite o nome do Autor}
* Data Criação: #{Data@Coloque a data de criação@@date}
**********************************************************************************/

-----------------------------
-- #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome Sequence@Nome Sequence. Ex.: SQ_HISTORICO_EVENTO}
-----------------------------
set serveroutput on
prompt "[LOG] >>>>>> Executando script de remoção da sequence #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome Sequence@Nome Sequence. Ex.: SQ_HISTORICO_EVENTO}"

DECLARE
    SEQUENCE_NOT_EXISTS EXCEPTION;
    PRAGMA EXCEPTION_INIT (SEQUENCE_NOT_EXISTS , -02289);
BEGIN
    EXECUTE IMMEDIATE 'DROP SEQUENCE #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome Sequence@Nome Sequence. Ex.: SQ_HISTORICO_EVENTO}';

    DBMS_OUTPUT.PUT_LINE('[SUCCESS] A sequence #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome Sequence@Nome Sequence. Ex.: SQ_HISTORICO_EVENTO} foi removida com sucesso!');

EXCEPTION
    WHEN SEQUENCE_NOT_EXISTS THEN
        DBMS_OUTPUT.PUT_LINE('[WARN] A sequence #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome Sequence@Nome Sequence. Ex.: SQ_HISTORICO_EVENTO} que está sendo removida já não existe no banco.');
END;
/

prompt "[LOG] <<<<<< Fim da execução do script de remoção da sequence #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome Sequence@Nome Sequence. Ex.: SQ_HISTORICO_EVENTO}"