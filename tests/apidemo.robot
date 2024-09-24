*** Settings ***
Library  RequestsLibrary


*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com

*** Test Cases ***
Get List Of Posts
    ${response}=    GET    ${BASE_URL}/posts
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.text}

Create New Post
    ${data}=    Create Dictionary    title=New Post    body=Post Body    userId=1
    ${response}=    POST    ${BASE_URL}/posts    json=${data}
    Should Be Equal As Numbers    ${response.status_code}    201
    Log    ${response.text}