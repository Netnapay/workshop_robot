***Setting***
Library    Selenium2Library
Suite Setup     Open login page
Suite Teardown    Close Browser
Test Teardown    Go back to login page
Test Template    Login fail flow

***Testcases***
Missing username                 ${EMPTY}    mode
Missing password                 demo        ${EMPTY}
Missing username and password    ${EMPTY}    ${EMPTY}
Wrong username                   username    mode
Wrong password                   demo        password
Wrong username and password      username    password


***Keyword***
Go back to login page
    Go To    http://localhost:7272/

Login fail flow
    [Arguments]    ${username}    ${password}
    Fill in    ${username}    ${password}
    Submit
    User must see the error page


User must see the error page
    Wait Until Element Contains    xpath=//*[@id="container"]/h1    Error Page


Submit
    Click Element    id=login_button
    # Click Button    id=login_button
    # Click Button    LOGIN


Fill in
    [Arguments]    ${username}    ${password}
    Input Text    id=username_field    ${username}
    Input Text    id=password_field    ${password}

Open login page
    Open Browser    http://localhost:7272/    browser=gc
