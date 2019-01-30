/**********************************************************************************
* Descrição: Script de adição de nova coluna na #{Esquema e Tabela@Digite o esquema e a tabela. Ex.: esquema.tabela}
* Autor: #{Autor@Digite o nome do Autor}
* Data Criação: #{Data@Coloque a data de criação@@date}
**********************************************************************************/

-----------------------------
-- #{Esquema e Tabela@Digite o esquema e a tabela. Ex.: esquema.tabela}
-----------------------------
set serveroutput on
prompt "[LOG] >>>>>> Executando script de alteração da #{Esquema e Tabela@Digite o esquema e a tabela. Ex.: esquema.tabela}"

DECLARE
    COLUMN_RENAME EXCEPTION;
    PRAGMA EXCEPTION_INIT (COLUMN_RENAME , -00957);
BEGIN
    EXECUTE IMMEDIATE 'ALTER TABLE #{Esquema e Tabela@Digite o esquema e a tabela. Ex.: esquema.tabela} RENAME COLUMN #{Campo origem@Campo a ser incluído@30} TO #{Campo destino@Campo a ser incluído@30}';

    DBMS_OUTPUT.PUT_LINE('[SUCCESS] A coluna #{Campo origem@Campo a ser incluído@30} foi alterada para #{Campo destino@Campo a ser incluído@30} com sucesso!');

EXCEPTION
    WHEN COLUMN_RENAME THEN
        DBMS_OUTPUT.PUT_LINE('[WARN] A coluna #{Campo origem@Campo a ser incluído@30} não foi alterada para #{Campo destino@Campo a ser incluído@30}.');
END;
/

prompt "[LOG] <<<<<< Fim da execucao do script de alteração da #{Esquema e Tabela@Digite o esquema e a tabela. Ex.: esquema.tabela}"