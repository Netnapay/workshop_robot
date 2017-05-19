***Setting***
Library    Selenium2Library

***Testcases***
Login Success
    Open login page
    Fill in username and password
    Submit
    User must see the welcome page

***Keyword***
User must see the welcome page
    # check case 01
    Wait Until Element Contains    xpath=//*[@id="container"]/h1    Welcome Page
    # Should back to login page With link
    # check case 02
    Page Should Contain Element    xpath=//*[@id="container"]/p/a
    Click Element    xpath=//*[@id="container"]/p/a
    # show login page
    Wait Until Page Contains    Login Page

Submit
    Click Element    id=login_button
    # Click Button    id=login_button
    # Click Button    LOGIN


Fill in username and password
    Input Text    id=username_field    demo
    Input Text    id=password_field    mode


Open login page
    Open Browser    http://localhost:7272/    browser=gc
