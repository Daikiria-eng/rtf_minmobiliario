*** Settings ***
Library    PuppeteerLibrary

*** Keywords ***
Open Minmobiliario
    ${HEADLESS}     Get variable value    ${HEADLESS}    ${False}
    &{options} =    create dictionary   headless=${HEADLESS}
    Open browser    http://localhost:8080/Minmobiliario1.0/  options=${options}
Open Minmobiliario_registro
    ${HEADLESS}     Get variable value    ${HEADLESS}    ${False}
    &{options} =    create dictionary   headless=${HEADLESS}
    Open browser    http://localhost:8080/Minmobiliario1.0/sign_in.jsp  options=${options}
Login Inputs
    Input text    id:inp-correo     CarlosLopez@gmail.com
    Input text    id:inp-password     123456789
    Click Element    id:Continue
    Run Async Keywords
    ...    Click Element    id:CerrarSesion    AND
    ...    Wait For Response Url    http://localhost:8080/Minmobiliario1.0/
Sing Up Inputs
    Input text    id:inp-name     Emilio
    Input text    id:inp-password     Fernandez
    Input text    id:inp-email     CarlosLopez@gmail.com
    Input text    id:address     123456789 
    Click Element     id:save