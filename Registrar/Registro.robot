*** Settings ***
Library    PuppeteerLibrary
Library    ScreenCapLibrary

Resource    ../rsrc/rsrc.robot
Test Teardown    Close Browser

*** Test Cases ***
Registro de Nuevo Usuario
    Open Minmobiliario
    Click Element    id:registro
    Log To Console    Registrando usuario
    Sing Up Inputs
    Capture page screenshot
    Wait Until Page Contains    Acceder    timeout=3000ms