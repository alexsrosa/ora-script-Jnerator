/**********************************************************************************
* Descrição: Script de criação de da user #{User@Digite o usuário. Ex.: SEFAZ_DEF}
* Autor: #{Autor@Digite o nome do Autor}
* Data Criação: #{Data@Coloque a data de criação@@date}
**********************************************************************************/

-----------------------------
-- #{User@Digite o usuário. Ex.: SEFAZ_DEF}
-----------------------------
set serveroutput on
prompt "[LOG] >>>>>> Executando script de criação da usuário #{User@Digite o usuário. Ex.: SEFAZ_DEF}"

DECLARE
    USER_EXISTS EXCEPTION;
    PRAGMA EXCEPTION_INIT (USER_EXISTS , -01920);
BEGIN
    EXECUTE IMMEDIATE 'CREATE USER #{User@Digite o usuário. Ex.: SEFAZ_DEF} IDENTIFIED BY #{User@Digite o usuário. Ex.: SEFAZ_DEF}';
    EXECUTE IMMEDIATE 'GRANT CONNECT, RESOURCE TO #{User@Digite o usuário. Ex.: SEFAZ_DEF}';

    DBMS_OUTPUT.PUT_LINE('[SUCCESS] O usuário #{User@Digite o usuário. Ex.: SEFAZ_DEF} foi incluída com sucesso!');

EXCEPTION
    WHEN USER_EXISTS THEN
        DBMS_OUTPUT.PUT_LINE('[WARN] O usuário #{User@Digite o usuário. Ex.: SEFAZ_DEF} que está sendo incluído já existe no banco.');
END;
/

prompt "[LOG] <<<<<< Fim da execucao do script de criação do usuário #{User@Digite o usuário. Ex.: SEFAZ_DEF}"