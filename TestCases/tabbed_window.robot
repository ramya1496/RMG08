*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***
Tc1
    open browser    https://www.google.com/     Chrome
    maximize browser window

    sleep   3

    open browser    https://www.bing.com/       Chrome
    maximize browser window

    sleep   3

    open browser    https://demowebshop.tricentis.com/      Chrome
    maximize browser window

    sleep   3

    switch browser      1
    sleep   2

    switch browser  3

