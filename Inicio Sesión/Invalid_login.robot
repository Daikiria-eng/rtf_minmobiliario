*** Settings ***

Library    PuppeteerLibrary
Library    DataDriver
...        file=rsrc/clientes.xlsx
...        sheet_name=Sheet1
Resource    ../rsrc/rsrc.robot
Test Setup        Open Minmobiliario
Suite Teardown    Close All Browser

Test Template    Read All The Data
*** Variables ***
${url}    https://www.kali.org
*** Test Cases ***    
Verify All The Data From Excel    ${nombre}    ${correo}    ${clave}

*** Keywords ***
Read All The Data
    [Arguments]    ${nombre}    ${correo}    ${clave}
    Log To Console  ${nombre}:${correo}:${clave}
    Input text    id:inp-correo     ${correo}
    Input text    id:inp-password     ${clave}
    Click Element    id:Continue
    Sleep    1s
    Wait Until Page Contains    HOLA MUNDO   timeout=5s
    Close Browser