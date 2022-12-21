#*** Settings ***
#Library     SeleniumLibrary
#
#*** Variables ***
#${url}      https://www.saucedemo.com/
#${browser}      Chrome
#
#*** Test Cases ***
#If else without keyword
#    open browser        ${url}      ${browser}
#    maximize browser window
#    input text      xpath://input[@name="user-name"]        standard_user
#    input text      xpath://input[@name="password"]     secret_sauce
#    click element       xpath://input[@name="login-button"]
#    sleep   3
#
#    ${count_elements}=    get element count       xpath://a
#    log to console      ${count_elements}
#
#    IF      ${count_elements} > 10
#        log to console      True
#    ELSE IF     ${count_elements} < 10
#        log to console      False
#    ELSE
#        log to console      None
#    END
#
#*** Keywords ***

##############################

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.saucedemo.com/
${browser}      Chrome

*** Test Cases ***
If else with keyword
    open browser        ${url}      ${browser}
    maximize browser window
    input text      xpath://input[@name="user-name"]        standard_user
    input text      xpath://input[@name="password"]     secret_sauce
    click element       xpath://input[@name="login-button"]
    sleep   3

    ${count_elements}=    get element count       xpath://a
    log to console      ${count_elements}

    IF      ${count_elements} > 10
        Keyword1
    ELSE IF     ${count_elements} < 10
        Keyword2
    ELSE
        Keyword3
    END

    run keyword IF  ${count_elements}>6      Keyword1
    ...     ELSE IF     ${count_elements}<6      Keyword2
    ...     ELSE        Keyword3


*** Keywords ***
Keyword1
    log to console      True
#    close browser

Keyword2
    log to console      False
#    close browser

Keyword3
    log to console      None
#    close browser














