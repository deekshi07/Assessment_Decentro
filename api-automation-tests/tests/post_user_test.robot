*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Create New User Successfully
    Create Session
    ${resp}=    Create New User    Deekshith    Developer
    Should Be Equal As Integers    ${resp.status_code}    201
    Dictionary Should Contain Key    ${resp.json()}    id

Create User With Empty Data
    Create Session
    ${resp}=    POST On Session    reqres    /users    json={}
    Should Be Equal As Integers    ${resp.status_code}    201
