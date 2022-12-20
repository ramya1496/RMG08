*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url1}      https://demowebshop.tricentis.com/
${browser}      Chrome
${url2}     https://testautomationpractice.blogspot.com/
${url3}     the-internet.herokuapp.com/basic_auth

*** Test Cases ***
#Handling Simple Alert
#    open browser    ${url1}      ${browser}
#    maximize browser window
#    set selenium speed      0.5seconds
#    click element       xpath://input[@class="button-1 search-box-button"]
##    handle alert    accept
##    handle alert    dismiss
#    handle alert    leave
#    close browser

#Handling confirmation alert
#    open browser    ${url2}     ${browser}
#    maximize browser window
##    set selenium speed      0.5seconds
#    click element       xpath://button[text()="Click Me"]
##    handle alert    accept        #Will click on OK
#    handle alert    dismiss        #Will click on cancel
#    sleep   3
#    close browser

Alert
    open browser    https://admin2:admin1@the-internet.herokuapp.com/basic_auth     ${browser}
    maximize browser window
    set selenium speed      0.5seconds

















