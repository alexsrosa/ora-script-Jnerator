/**********************************************************************************
* Descrição: Script de adição de contraint de FK na #{Esquema e Tabela@Digite o esquema e a tabela. Ex.: esquema.tabela}
* Autor: #{Autor@Digite o nome do Autor}
* Data Criação: #{Data@Coloque a data de criação@@date}
**********************************************************************************/

-----------------------------
-- #{Esquema e Tabela@Digite o esquema e a tabela. Ex.: esquema.tabela}
-----------------------------
set serveroutput on
prompt "[LOG] >>>>>> Executando script de alteração da #{Esquema e Tabela@Digite o esquema e a tabela. Ex.: esquema.tabela}"

DECLARE
    CONSTRAINT_FK_EXISTS EXCEPTION;
    PRAGMA EXCEPTION_INIT (CONSTRAINT_FK_EXISTS , -02275);
BEGIN
    EXECUTE IMMEDIATE 'ALTER TABLE #{Esquema e Tabela@Digite o esquema e a tabela. Ex.: esquema.tabela} ' ||
        'ADD CONSTRAINT #{Nome da FK@Nome padrão da constraint de FK. Ex.: FK_PEDIDO_RECEITA_2@30} ' ||
        'FOREIGN KEY (#{Campo@Campo que sofrerá alteração@30}) ' ||
        'REFERENCES #{Esquema e Tabela externa@Digite o esquema e a tabela. Ex.: SEFAZ_ARR.TA_RECEITAS}(#{Campo@Campo que sofrerá alteração@30})';

    DBMS_OUTPUT.PUT_LINE('[SUCCESS] A FK #{Nome da FK@Nome padrão da constraint de FK. Ex.: FK_PEDIDO_RECEITA_2@30} foi incluída com sucesso!');

EXCEPTION
    WHEN CONSTRAINT_FK_EXISTS THEN
        DBMS_OUTPUT.PUT_LINE('[WARN] A FK #{Nome da FK@Nome padrão da constraint de FK. Ex.: FK_PEDIDO_RECEITA_2@30} a ser incluída, já existe.');
END;
/

prompt "[LOG] <<<<<< Fim da execução do script de alteração da #{Esquema e Tabela@Digite o esquema e a tabela. Ex.: esquema.tabela}"