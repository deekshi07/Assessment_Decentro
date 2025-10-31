*** Settings ***
Resource    ../resources/keywords.robot
Library    ../../.venv/lib/python3.12/site-packages/robot/libraries/Collections.py


*** Test Cases ***
Get Existing User
    Initialize Reqres Session
    ${response}=    Get User By ID    2
    Should Be Equal As Integers    ${response.status_code}    200
    Log    ${response.json()}

*** Test Cases ***
Get Non-Existing User
    ${response}=    Get User By ID    23
    ${status}=    Convert To Integer    ${response.status_code}
    Run Keyword If    ${status} == 401 or ${status} == 404    Log To Console    Status is ${status}
    Should Be True    ${status} == 401 or ${status} == 404

