***Setting***
Library    Selenium2Library

***Testcases***
Forgot Password
    Open page Register
    Click link for Register
    Next to Button
    Alert message

Out of system
   Open page Register
   Click link for Register
   Click out Button from system

***Keyword***
Open page Register
    Open Browser    https://epit.rd.go.th/EFILING/RegController    browser=gc

Click link for Register
    Click link    name=link_RegType1

Next to Button
    Click Element    name=bNext

Alert message
    ${result}=   Get Alert Message
    Should Contain    ${result}   [E011]
    # Alert Should Be Present   ข้อความปฏิเสธ [E011] :${SPACE*2}กรุณาบันทึกเลขประจำตัวผู้เสียภาษีอากร // แบบเต็ม

Click out Button from system
    Click Element    name=bExit
    Choose Cancel On Next Confirmation
    Confirm Action

