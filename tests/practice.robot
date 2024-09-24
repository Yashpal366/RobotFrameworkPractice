*** Settings ***
Library    OperatingSystem

*** Test Cases ***
Write And Read File
    [Documentation]    Create a file, write text, and read the content.
    Create File    sample.txt    Hello, this is a sample file.
    ${content}=    Read File    sample.txt
    Log    Content of the file is: ${content}
    Remove File    sample.txt
