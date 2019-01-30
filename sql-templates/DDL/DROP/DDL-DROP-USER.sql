/**********************************************************************************
* Descrição: Script de remoção de da user #{User@Digite o usuário. Ex.: SEFAZ_DEF}
* Autor: #{Autor@Digite o nome do Autor}
* Data remoção: #{Data@Coloque a data de remoção@@date}
**********************************************************************************/

-----------------------------
-- #{User@Digite o usuário. Ex.: SEFAZ_DEF}
-----------------------------
set serveroutput on
prompt "[LOG] >>>>>> Executando script de remoção da usuário #{User@Digite o usuário. Ex.: SEFAZ_DEF}"

DECLARE
    USER_EXISTS EXCEPTION;
    PRAGMA EXCEPTION_INIT (USER_EXISTS , -01918);
BEGIN
    EXECUTE IMMEDIATE 'DROP USER #{User@Digite o usuário. Ex.: SEFAZ_DEF}';

    DBMS_OUTPUT.PUT_LINE('[SUCCESS] O usuário #{User@Digite o usuário. Ex.: SEFAZ_DEF} foi incluída com sucesso!');

EXCEPTION
    WHEN USER_EXISTS THEN
        DBMS_OUTPUT.PUT_LINE('[WARN] O usuário #{User@Digite o usuário. Ex.: SEFAZ_DEF} que está sendo incluído já existe no banco.');
END;
/

prompt "[LOG] <<<<<< Fim da execucao do script de remoção do usuário #{User@Digite o usuário. Ex.: SEFAZ_DEF}"