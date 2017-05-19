***Setting***
Library    Selenium2Library


***Testcases***
Choose 2 file to upload
    Open page file upload
    Choose 2 file
    Count number of uploaded files
    Upload all files Should be successfully

***Keyword***
Upload all files Should be successfully
    Click Element    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/div/button[1]
    Wait Until page Contains Element    xpath=//div[@style="width: 100%;"]

Choose 2 file
    Choose File    xpath=//*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]    C:/Users/NetnapaY/Desktop/kitty5.jpg
    Choose File    xpath=//*[@id="ng-app"]/body/div/div[2]/div[1]/input[2]    C:/Users/NetnapaY/Desktop/kitty6.jpg

Count number of uploaded files
    Wait Until Element Contains    xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/p     Queue length: 2

    Xpath Should Match X Times    //*[@id="ng-app"]/body/div/div[2]/div[2]/table/tbody/tr    2

    Table Cell Should Contain   xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table   2    1   kitty5.jpg

    Table Cell Should Contain   xpath=//*[@id="ng-app"]/body/div/div[2]/div[2]/table   3    1   kitty6.jpg

Open page file upload
    Open Browser    https://goo.gl/YE27iy    gc
    Element Should Be Disabled    xpath=//div[2]/div/button[1]