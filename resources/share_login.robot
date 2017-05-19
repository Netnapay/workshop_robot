Library    Selenium2Library

***Keyword***

Open login page
    Open Browser    http://localhost:7272/    browser=gc

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