*** Settings ***
Library     SeleniumLibrary

##Library     DataDriver      path_of_excelfile     Sheet_number
Library     DataDriver     ../TestData/logindata.xlsx
Resource    ../Resources/login_resources.robot

Suite Setup         Opening browser
Suite Teardown      Close my browser

Test Template       Invalid

*** Variables ***

*** Test Cases ***
LoginUsingExcel       using   ${username}     and     ${pwd}

*** Variables ***

*** Keywords ***
Invalid
    [Arguments]     ${username}     ${pwd}
    Entering Email      ${username}
    Entering Password       ${pwd}
    Click on Login button
    Errormsg should contain
