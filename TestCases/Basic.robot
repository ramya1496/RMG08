*** Settings ***
Library     SeleniumLibrary


*** Variables ***


*** Test Cases ***
Login Test Case
    open browser        https://demo.actitime.com/login.do      Chrome
    maximize browser window     #To maximize the browser window
    #input text     id/name/xpath       data
    input text      name:username       admin
    sleep       2
    input text      name:pwd        manager
    sleep       2
    click element       xpath://div[text()="Login "]
    sleep       2
    close browser   #closes the browser

*** Keywords ***


########################################################################################
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url1}     https://www.google.com/
${url2}     https://demowebshop.tricentis.com/
${url3}     https://testautomationpractice.blogspot.com/
${browser}      Chrome

*** Test Cases ***
TC1
    open browser    ${url1}    ${browser}
    sleep   3
    open browser    ${url2}     ${browser}
    sleep   3
    open browser    ${url3}     ${browser}
    sleep   3
#    close browser       #close the latest opened browser
    close all browsers      #closes all




















