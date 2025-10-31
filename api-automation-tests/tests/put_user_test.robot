*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Update Existing User
    Create Session
    ${resp}=    Update User    2    Deekshith    Engineer
    Should Be Equal As Integers    ${resp.status_code}    200
    Dictionary Should Contain Key    ${resp.json()}    updatedAt

Update User With Invalid ID
    Create Session
    ${resp}=    Update User    9999    John    QA
    Should Be Equal As Integers    ${resp.status_code}    200
