*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.techlistic.com/p/selenium-practice-form.html
${browser}      Chrome

*** Test Cases ***
Radio Buttons
    open browser        ${url}      ${browser}
    maximize browser window
    sleep   3
    ##select radio button       name
    select radio button     exp     5
