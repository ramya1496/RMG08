#*** Settings ***
#Library     SeleniumLibrary
#
#*** Variables ***
#${url}      https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
#${browser}      Chrome
#
#*** Test Cases ***
#Valid Credentials
#    open browser        ${url}      ${browser}
#    maximize browser window
#    input text      id:Email        admin@yourstore.com
#    input text      id:Password     admin
#    click element   xpath://button[text()="Log in"]
#    page should contain     Dashboard
#
#Invalid Credentials
#    open browser        ${url}      ${browser}
#    maximize browser window
#    input text      id:Email        admin@yourstore.com
#    input text      id:Password     adminnn
#    click element   xpath://button[text()="Log in"]
#    page should contain     Login was unsuccessful
#
#*** Keywords ***


#################################################################

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}      Chrome

*** Test Cases ***
Valid Scenario
    LoginCredentials    admin@yourstore.com     admin
    page should contain     Dashboard

Invalid Scenario
    LoginCredentials    admin@yourstore.com     adminnn
    page should contain         Login was unsuccessful

*** Keywords ***
LoginCredentials
    [Arguments]     ${email_id}      ${password}
    open browser        ${url}      ${browser}
    maximize browser window
    input text      id:Email        ${email_id}
    input text      id:Password     ${password}
    click element   xpath://button[text()="Log in"]



pip install --upgrade robotframework-datadriver[XLS]











