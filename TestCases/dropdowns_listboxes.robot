*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.techlistic.com/p/selenium-practice-form.html
${browser}      Chrome

*** Test Cases ***
#Handling Dropdowns
#    open browser    ${url}      ${browser}
#    maximize browser window
#    ##select from list by value     name_of_dropdown        value
#    ##select from list by index     name_of_dropdown        index_num
#    ##select from list by label     name_of_dropdown    visible_text
#    sleep   2
#    select from list by label       continents      Australia
#    sleep   3
#    select from list by index       continents      6
#    sleep   3
#    close browser

handling Listboxes
    open browser    ${url}      ${browser}
    maximize browser window
    select from list by label   selenium_commands   Navigation Commands
    sleep   3
    select from list by index   selenium_commands       2
    sleep   3
    unselect from list by label     selenium_commands   Navigation Commands














