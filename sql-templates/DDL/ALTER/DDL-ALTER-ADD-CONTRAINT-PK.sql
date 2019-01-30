/**********************************************************************************
* Descrição: Script de adição de contraint de PK na #{Esquema e Tabela@Digite o esquema e a tabela. Ex.: esquema.tabela}
* Autor: #{Autor@Digite o nome do Autor}
* Data Criação: #{Data@Coloque a data de criação@@date}
**********************************************************************************/

-----------------------------
-- #{Esquema e Tabela@Digite o esquema e a tabela. Ex.: esquema.tabela}
-----------------------------
set serveroutput on
prompt "[LOG] >>>>>> Executando script de alteração da #{Esquema e Tabela@Digite o esquema e a tabela. Ex.: esquema.tabela}"

DECLARE
    CONSTRAINT_PK_EXISTS EXCEPTION;
    PRAGMA EXCEPTION_INIT (CONSTRAINT_PK_EXISTS , -02260);
BEGIN
    EXECUTE IMMEDIATE 'ALTER TABLE #{Esquema e Tabela@Digite o esquema e a tabela. Ex.: esquema.tabela} ' ||
        'ADD CONSTRAINT #{Nome da PK@Nome padrão da constraint de PK. Ex.: PK_ATIVIDADE_ECON_CATEGORIA@30} ' ||
        'PRIMARY KEY (#{Campo@Campo que sofrerá alteração@30})';

    DBMS_OUTPUT.PUT_LINE('[SUCCESS] A PK #{Nome da PK@Nome padrão da constraint de PK. Ex.: PK_ATIVIDADE_ECON_CATEGORIA@30} foi incluída com sucesso!');

EXCEPTION
    WHEN CONSTRAINT_PK_EXISTS THEN
        DBMS_OUTPUT.PUT_LINE('[WARN] A PK #{Nome da PK@Nome padrão da constraint de PK. Ex.: PK_ATIVIDADE_ECON_CATEGORIA@30} a ser incluída, já existe.');
END;
/

prompt "[LOG] <<<<<< Fim da execução do script de alteração da #{Esquema e Tabela@Digite o esquema e a tabela. Ex.: esquema.tabela}"