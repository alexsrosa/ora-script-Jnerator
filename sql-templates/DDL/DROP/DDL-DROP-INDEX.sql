/**********************************************************************************
* Descrição: Script de remoção de index na #{Nome index@Digite o nome do index. Ex.: IDX_INDICE}
* Autor: #{Autor@Digite o nome do Autor}
* Data Criação: #{Data@Coloque a data de criação@@date}
**********************************************************************************/

-----------------------------
-- #{Nome index@Digite o nome do index. Ex.: IDX_INDICE}
-----------------------------
set serveroutput on
prompt "[LOG] >>>>>> Executando script de alteração da #{Nome index@Digite o nome do index. Ex.: IDX_INDICE}"

DECLARE
    INDEX_EXISTS EXCEPTION;
    PRAGMA EXCEPTION_INIT (INDEX_EXISTS , -01418);
BEGIN
    EXECUTE IMMEDIATE 'DROP INDEX #{Nome index@Digite o nome do index. Ex.: IDX_INDICE}';

    DBMS_OUTPUT.PUT_LINE('[SUCCESS] A #{Nome index@Digite o nome do index. Ex.: IDX_INDICE} foi excluída com sucesso!');

EXCEPTION
    WHEN INDEX_EXISTS THEN
        DBMS_OUTPUT.PUT_LINE('[WARN] A #{Nome index@Digite o nome do index. Ex.: IDX_INDICE} que está sendo excluída já não existe.');
END;
/

prompt "[LOG] <<<<<< Fim da execucao do script de alteração da #{Nome index@Digite o nome do index. Ex.: IDX_INDICE}"