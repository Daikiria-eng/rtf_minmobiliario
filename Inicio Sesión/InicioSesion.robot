*** Settings ***
Library    PuppeteerLibrary
Test Teardown    Close Browser
Resource    ../rsrc/rsrc.robot

*** Test Cases ***
Ingresar datos para el Inicio de Sesión
    Open Minmobiliario
    Login Inputs
    Log To Console    \nIniciando sesión\n
    Capture page screenshot	
    Log To Console    Esperando a inicio
    #Wait Until Page Contains    Tendencias   timeout=5s
    Run Async Keywords
    ...    Click Element    id:CerrarSesion    AND
    ...    Wait For Response Url    http://localhost:8080/Minmobiliario1.0/