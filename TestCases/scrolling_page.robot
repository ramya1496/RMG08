*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://www.countries-ofthe-world.com/
${browser}      Chrome

*** Test Cases ***
Scrolling Page
    Launch Browser
    sleep   3

    #scroll down till the particular pixel number
#    execute javascript      window.scrollTo(0, 300)
#    sleep   5

    ##scrolls till the element is located
#    scroll element into view    xpath://a[text()="Capitals of Asia"]
#    sleep   5
#    close browser

    ##document.body.scrollHeight= scroll down to the end of page
    execute javascript      window.scrollTo(0, document.body.scrollHeight)
    sleep   4
    execute javascript      window.scrollTo(0, -document.body.scrollHeight)
    sleep   4
    close browser


*** Keywords ***
Launch Browser
    open browser    ${url}      ${browser}
    maximize browser window
