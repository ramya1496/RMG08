*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://demowebshop.tricentis.com/
${browser}      Chrome

*** Test Cases ***
Capturing Screenshots
    open browser    ${url}      ${browser}
    maximize browser window
#    set selenium speed      0.5seconds
    #Syntax : capture element screenshot     xpath of element        Location
    capture element screenshot      xpath://img[@alt="Tricentis Demo Web Shop"]     C:/Users/Ramya/OneDrive/Desktop/practice files/screenshot1.png
#    close browser
    capture page screenshot