*** Settings ***
Library      SeleniumLibrary
Resource        ../Resources/login_resources.robot
Library     DataDriver      ../TestData/logindata.csv

Suite Setup     Opening browser
Suite Teardown      Close my browser
Test Template       Invalid Login Scenarios


*** Test Cases ***
LoginTestWithCSV        ${username}      ${pwd}


*** Keywords ***
Invalid Login Scenarios
    [Arguments]     ${username}     ${pwd}
    Entering Email      ${username}
    Entering Password      ${pwd}
    Click on Login button