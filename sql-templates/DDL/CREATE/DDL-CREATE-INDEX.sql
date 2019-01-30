/**********************************************************************************
* Descrição: Script de criação de da índice #{Esquema@Digite o esquema. Ex.: SEFAZ_DEF}.#{Nome do índice@Nome do índice. Ex.: IDX_ANEXO_CREDENCIAMENTO_1}
* Autor: #{Autor@Digite o nome do Autor}
* Data Criação: #{Data@Coloque a data de criação@@date}
**********************************************************************************/

-----------------------------
-- #{Esquema@Digite o esquema. Ex.: SEFAZ_DEF}.#{Nome do índice@Nome do índice. Ex.: IDX_ANEXO_CREDENCIAMENTO_1}
-----------------------------
set serveroutput on
prompt "[LOG] >>>>>> Executando script de criação da índice #{Esquema@Digite o esquema. Ex.: SEFAZ_DEF}.#{Nome do índice@Nome do índice. Ex.: IDX_ANEXO_CREDENCIAMENTO_1}"

DECLARE
    SEQUENCE_EXISTS EXCEPTION;
    PRAGMA EXCEPTION_INIT (SEQUENCE_EXISTS , -00955);
BEGIN
    EXECUTE IMMEDIATE 'CREATE INDEX #{Esquema@Digite o esquema. Ex.: SEFAZ_DEF}.#{Nome do índice@Nome do índice. Ex.: IDX_ANEXO_CREDENCIAMENTO_1} ' ||
                     'ON #{Esquema@Digite o esquema. Ex.: SEFAZ_DEF}.#{Nome da tabela@Nome da tabela. Ex.: TA_ANEXO_CREDENCIAMENTO} ' ||
                     '(#{Nome do campo@Nome do campo. Ex.: ID_CREDENCIAMENTO_DEF})';

    DBMS_OUTPUT.PUT_LINE('[SUCCESS] O índice #{Esquema@Digite o esquema. Ex.: SEFAZ_DEF}.#{Nome do índice@Nome do índice. Ex.: IDX_ANEXO_CREDENCIAMENTO_1} foi incluída com sucesso!');

EXCEPTION
    WHEN SEQUENCE_EXISTS THEN
        DBMS_OUTPUT.PUT_LINE('[WARN] O índice #{Esquema@Digite o esquema. Ex.: SEFAZ_DEF}.#{Nome do índice@Nome do índice. Ex.: IDX_ANEXO_CREDENCIAMENTO_1} que está sendo incluído já existe no banco.');
END;
/

prompt "[LOG] <<<<<< Fim da execucao do script de criação do índice #{Esquema@Digite o esquema. Ex.: SEFAZ_DEF}.#{Nome do índice@Nome do índice. Ex.: IDX_ANEXO_CREDENCIAMENTO_1}"