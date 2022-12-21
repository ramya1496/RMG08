*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html
${browser}      Chrome

*** Test Cases ***
Handling frames
    open browser    ${url}      ${browser}
    maximize browser window
    ##select frame      name
    select frame    xpath://iframe[@name="packageListFrame"]
    sleep   2
    click element       xpath://a[text()="org.openqa.selenium.concurrent"]
    unselect frame

    sleep   3

    select frame    packageFrame
    sleep   2
    click element       xpath://a[text()="ExecutorServices"]
    sleep   3
    unselect frame

    sleep   2

    select frame    classFrame
    sleep   2
    click link   Help
    sleep   3
    close browser

*** Keywords ***

