/**********************************************************************************
* Descrição: Script de remoção de constraint na #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome tabela@Nome tabela. Ex.: TA_HISTORICO_EVENTO}
* Autor: #{Autor@Digite o nome do Autor}
* Data Criação: #{Data@Coloque a data de criação@@date}
**********************************************************************************/

-----------------------------
-- #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome tabela@Nome tabela. Ex.: TA_HISTORICO_EVENTO}
-----------------------------
set serveroutput on
prompt "[LOG] >>>>>> Executando script de alteração da #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome tabela@Nome tabela. Ex.: TA_HISTORICO_EVENTO}"

DECLARE
    CONSTRAINT_EXISTS EXCEPTION;
    PRAGMA EXCEPTION_INIT (CONSTRAINT_EXISTS , -02443);

    INDICE_EXISTS EXCEPTION;
    PRAGMA EXCEPTION_INIT (INDICE_EXISTS , -01418);
BEGIN
    EXECUTE IMMEDIATE 'ALTER TABLE #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome tabela@Nome tabela. Ex.: TA_HISTORICO_EVENTO} '||
        'DROP CONSTRAINT #{Constraint PK@Constraint a ser excluído@30} CASCADE';

    EXECUTE IMMEDIATE 'DROP INDEX #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Constraint PK@Constraint a ser excluído@30}';

    DBMS_OUTPUT.PUT_LINE('[SUCCESS] A #{Constraint PK@Constraint a ser excluído@30} foi excluída com sucesso!');

EXCEPTION
    WHEN CONSTRAINT_EXISTS THEN
        DBMS_OUTPUT.PUT_LINE('[WARN] A #{Constraint PK@Constraint a ser excluído@30} que está sendo excluída já não existe.');
    WHEN INDICE_EXISTS THEN
        DBMS_OUTPUT.PUT_LINE('[WARN] A #{Constraint PK@Constraint a ser excluído@30} que está sendo excluída já não existe.');
END;
/

prompt "[LOG] <<<<<< Fim da execucao do script de alteração da #{Esquema@Digite o esquema. Ex.: SEFAZ_CCI}.#{Nome tabela@Nome tabela. Ex.: TA_HISTORICO_EVENTO}"