*** Settings ***

Library    PuppeteerLibrary
Library    PuppeteerLibrary

Resource   rsrc/rsrc.robot

*** Test Cases ***
Registro de usuarios
    Open Minmobiliario_registro
    Sing Up Inputs
    Capture Page Screenshot
Inicio sesión
    Open Minmobiliario
    Login Inputs
    Capture Page Screenshot 