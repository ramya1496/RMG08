*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***
TC1
    open browser    https://demowebshop.tricentis.com/      Chrome
    maximize browser window

    ${get_text}=    get text        //div[@class="block block-category-navigation"]
    log to console      ${get_text}
    sleep   2
    close browser


*** Keywords ***

##############################################################################################

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://demowebshop.tricentis.com/
${browser}      Chrome

*** Test Cases ***
TC1
    open browser        ${url}      ${browser}
    maximize browser window

    ${get_text}=    get text        //div[@class="block block-category-navigation"]
    log to console      ${get_text}
    sleep   2
    close browser


*** Keywords ***

#############################################################################################
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://demowebshop.tricentis.com/
${browser}      Chrome

*** Test Cases ***
Categories text
    Open My browser
    ${get_text}=    get text        //div[@class="block block-category-navigation"]
    log to console      ${get_text}
    sleep   2
    close browser

Footer text
    Open My browser
    ${get_text}=    get text        //div[@class="footer-menu-wrapper"]
    log to console      ${get_text}
    sleep   2
    close browser

*** Keywords ***
Open My browser
    open browser        ${url}      ${browser}
    maximize browser window





