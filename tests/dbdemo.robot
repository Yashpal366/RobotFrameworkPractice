*** Settings ***
Library    DatabaseLibrary

*** Variables ***
${DB_HOST}     localhost
${DB_NAME}     mydatabase
${DB_USER}     root
${DB_PASSWORD}  mypassword

*** Test Cases ***
Execute A Query
    Connect To Database    pymysql    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}    ${DB_HOST}
    ${result}=    Execute Query    SELECT * FROM users WHERE id = 1
    Log    ${result}
    Disconnect From Database
