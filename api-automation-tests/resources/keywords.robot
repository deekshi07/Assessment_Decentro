*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://reqres.in/api

*** Keywords ***
Initialize Reqres Session
    Create Session    reqres    ${BASE_URL}    verify=False

Get User By ID
    [Arguments]    ${user_id}
    ${headers}=    Create Dictionary    Content-Type=application/json
    ${response}=    GET On Session    reqres    /users/${user_id}    headers=${headers}    expected_status=any    verify=${False}
    RETURN    ${response}

Create New User
    [Arguments]    ${user_id}  ${name}    ${job}
    ${body}=    Create Dictionary    name=${name}    job=${job}
    ${response}=    POST On Session    reqres    /users    json=${body}    expected_status=any
    RETURN    ${response}


Update User
    [Arguments]    ${user_id}    ${name}    ${job}
    ${body}=    Create Dictionary    name=${name}    job=${job}
    ${response}=    Put On Session    reqres    users/${user_id}    json=${body}    expected_status=any
    Log To Console    Status Code: ${response.status_code}
    RETURN    ${response}
