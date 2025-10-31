Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://reqres.in/api

*** Keywords ***
Create Session
    Create Session    reqres    ${BASE_URL}

Get User By ID
    [Arguments]    ${user_id}
    ${response}=    GET On Session    reqres    /users/${user_id}
    [Return]    ${response}

Create New User
    [Arguments]    ${name}    ${job}
    ${body}=    Create Dictionary    name=${name}    job=${job}
    ${response}=    POST On Session    reqres    /users    json=${body}
    [Return]    ${response}

Update User
    [Arguments]    ${user_id}    ${name}    ${job}
    ${body}=    Create Dictionary    name=${name}    job=${job}
    ${response}=    PUT On Session    reqres    /users/${user_id}    json=${body}
    [Return]    ${response}
