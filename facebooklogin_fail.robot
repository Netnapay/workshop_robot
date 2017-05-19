***Setting***
Library    Selenium2Library
Library    Screenshot

***Testcases***
Fail with invalid email address
    Open register page
    Fill in personal information
    Fill in email
    Fill in password
    Choose birthday
    Choose gender
    Create account
    Should show error message


***Keyword***
Should show error message
    Wait Until Element Is Visible    id=reg_error_inner    20s
    # A synconice in row 19
    ${text}=    Get Text   id=reg_error_inner
    Log    ${text}
    Should Be Equal    ${text}    xxxx
    Should Contain    ${text}    ดูเหมือนว่าคุณอาจป้อนที่อยู่อีเมลที่ไม่ถูกต้อง โปรดแก้ไข จากนั้นคลิกเพื่อดำเนินการต่อ
    Take Screenshot
    # Wait Until Element Contains    id=reg_error_inner    ดูเหมือนว่าคุณอาจป้อนที่อยู่อีเมลที่ไม่ถูกต้อง โปรดแก้ไข จากนั้นคลิกเพื่อดำเนินการต่อ

Create account
    Click Element    name=websubmit
    Take Screenshot

Choose gender
    Select Radio Button    sex    1
    Take Screenshot

Choose birthday
    Select From List By Value    name=birthday_day    5
    Select From List By Value    name=birthday_month    5
    Select From List By Value    name=birthday_year    2000
    Take Screenshot

Fill in password
    Input text    name=reg_passwd__                   123456789
    Take Screenshot

Fill in email
    Input text    name=reg_email__                    mat@gemail.com
    Input text    name=reg_email_confirmation__       mat@gemail.com
    Take Screenshot

Fill in personal information
    Input text    name=firstname    neta
    Input text    name=lastname     yema
    Take Screenshot

Open register page
    Open Browser    https://www.facebook.com/    browser=gc
    Take Screenshot