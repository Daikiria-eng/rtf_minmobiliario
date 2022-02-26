*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup    Connect To Database    pymysql     ${DBName}     ${DBUser}     ${DBPass}     ${DBHost}     ${DBPort}
Suite Teardown     Disconnect From Database

*** Variables ***
${DBName}    minmobiliario
${DBUser}    root
${DBPass}    mysql
${DBHost}    127.0.0.1
${DBPort}    3306

*** Test Cases ***
Seleccionar personas
    ${output}=    Execute SQl String    INSERT INTO cliente VALUES (default, 'carmen','asdf','carmen@asdf.com','carmenasdf');
    Log To Console    \n${output}\n
    Should Be Equal As Strings    ${output}    None