*** Settings ***
Resource    ../resources/keywords.robot
Library     Collections

*** Test Cases ***
Update Existing User
    Initialize Reqres Session
    ${resp}=    Update User    2    Deekshith    Engineer
    Log To Console    Status Code: ${resp.status_code}
    Should Be True    ${resp.status_code} == 200 or ${resp.status_code} == 401

Update User With Invalid ID
    Initialize Reqres Session
    ${resp}=    Update User    9999    John    QA
    Log To Console    Status Code: ${resp.status_code}
    Should Be True    ${resp.status_code} == 200 or ${resp.status_code} == 401
