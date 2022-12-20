*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      http://demo.automationtesting.in/Register.html
${browser}      Chrome

*** Test Cases ***
CheckBoxes
    open browser    ${url}      ${browser}
    maximize browser window
    select checkbox     xpath://input[@id="checkbox1"]
    sleep   2
    select checkbox     xpath://input[@id="checkbox2"]
    sleep   2
    select checkbox     xpath://input[@id="checkbox3"]
    sleep   2
    unselect checkbox   xpath://input[@id="checkbox2"]
    sleep   2
    close browser


    #instead of using sleep for every line, we can use "set selenium speed"  keyword
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed      1second
    select checkbox     xpath://input[@id="checkbox1"]
    select checkbox     xpath://input[@id="checkbox2"]
    select checkbox     xpath://input[@id="checkbox3"]
    unselect checkbox   xpath://input[@id="checkbox2"]
    close browser

Checkbox using FOR loop
    open browser    ${url}      ${browser}
    maximize browser window
    FOR     ${ele}      IN RANGE    1   4
        select checkbox     (//input[@type="checkbox"])[${ele}]
    END

*** Keywords ***

##################################################################