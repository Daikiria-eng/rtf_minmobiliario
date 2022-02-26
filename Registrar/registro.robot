*** Settings ***

Library    PuppeteerLibrary
Library    DataDriver
...        file=rsrc/clientes.xlsx
...        sheet_name=Sheet1
Resource    ../rsrc/rsrc.robot
Test Setup        Open Minmobiliario_registro
Suite Teardown    Close All Browser

Test Template    Sign Up
*** Variables ***
${url}    https://www.kali.org
*** Test Cases ***    
Verify All The Data From Excel    ${nombre}    ${apellido}    ${correo}    ${clave}

*** Keywords ***
Sign Up
    [Arguments]    ${nombre}    ${apellido}    ${correo}    ${clave}
    sleep    1s
    Input text    id:inp-name     ${nombre}
    Input text    id:inp-password     ${apellido}
    Input text    id:inp-email     ${correo}
    Input text    id:address     ${clave}
    Click Element    id:save
    Close All Browser