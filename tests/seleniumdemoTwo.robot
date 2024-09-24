*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}    https://practicetestautomation.com/practice-test-login/
${USERNAME}    student
${PASSWORD}    Password123

*** Test Cases ***
Login To Website
    Open Browser    ${URL}    chrome
    Input Text    id:username    ${USERNAME}
    Input Text    id:password   ${PASSWORD}
    Click Button    id:submit
    Wait Until Page Contains    Logged In Successfully
    Close Browser
