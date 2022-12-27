*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}      Chrome

*** Keywords ***
Opening browser
    open browser    ${url}      ${browser}
    maximize browser window

Entering Email
    [Arguments]     ${username}
    input text      id:Email        ${username}

Entering Password
    [Arguments]     ${pwd}
    input text      id:Password         ${pwd}

Click on Login button
    click element   xpath://button[text()="Log in"]

Login Page Should Contain
    page should contain     Dashboard

Errormsg should contain
    page should contain     Login was unsuccessful

Close my browser
    close all browsers