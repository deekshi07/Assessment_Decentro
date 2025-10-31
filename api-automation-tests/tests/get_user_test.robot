*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Get Existing User
    Create Session
    ${resp}=    Get User By ID    2
    Should Be Equal As Integers    ${resp.status_code}    200
    Dictionary Should Contain Key    ${resp.json()}    data

Get Non-Existing User
    Create Session
    ${resp}=    Get User By ID    23
    Should Be Equal As Integers    ${resp.status_code}    404
