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
    ${location1}=   get location
    log to console      ${location1}
    sleep   3
    go to    ${url2}
    ${location2}=   get location
    log to console      ${location2}
    sleep   3
    go to    ${url3}
    ${location3}=   get location
    log to console      ${location3}
    sleep   3
#    go back
#    sleep   3
    close browser


#go to = Will go to the next URL
#go back = Will go back to the previous URL
#get location = Will give the URL+