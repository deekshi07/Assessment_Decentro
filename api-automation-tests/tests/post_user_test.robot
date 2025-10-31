*** Settings ***
Resource    ../resources/keywords.robot
Library     Collections
 
*** Test Cases ***
Create Valid User
    Initialize Reqres Session
    ${resp}=    Create New User   01  Deekshith    Developer
    Log To Console    Status Code: ${resp.status_code}
    Should Be True    ${resp.status_code} == 201 or ${resp.status_code} == 401

Create User Without Job
    Initialize Reqres Session
    ${resp}=    Create New User    02  Deekshith    ${EMPTY}
    Log To Console    Status Code: ${resp.status_code}
    Should Be True    ${resp.status_code} == 201 or ${resp.status_code} == 401
