#*** Settings ***
#Library     SeleniumLibrary
#
#*** Variables ***
#${url}      https://www.saucedemo.com/
#${browser}      Chrome
#
#*** Test Cases ***
#Elements count
#    open browser        ${url}      ${browser}
#    maximize browser window
#    input text      xpath://input[@name="user-name"]        standard_user
#    input text      xpath://input[@name="password"]     secret_sauce
#    click element       xpath://input[@name="login-button"]
#    sleep   3
#
#    ${count_elements}=    get element count       xpath://div
#    log to console      ${count_elements}
#
#*** Keywords ***

################################################################














