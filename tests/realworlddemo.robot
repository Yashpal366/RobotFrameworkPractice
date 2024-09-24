*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    DatabaseLibrary


*** Variables ***
${BASE_URL}    https://example.com/register
${DB_HOST}     localhost
${DB_NAME}     users_db
${DB_USER}     root
${DB_PASSWORD}  password

*** Test Cases ***
User Registration And Database Validation
    Open Browser    ${BASE_URL}    chrome
    Input Text    id:username    newuser
    Input Text    id:password    password123
    Click Button    id:register_button
    Wait Until Page Contains    Registration Successful
    Close Browser

    Connect To Database    pymysql    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}    ${DB_HOST}
    ${result}=    Execute Query    SELECT * FROM users WHERE username = 'newuser'
    Should Not Be Empty    ${result}
    Disconnect From Database
