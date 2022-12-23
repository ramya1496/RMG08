*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}          https://testautomationpractice.blogspot.com/
${browser}      Chrome

*** Test Cases ***
Table Validations
    open browser        ${url}      ${browser}
    ${rows}=    get element count       xpath://table[@name="BookTable"]/tbody/tr
    log to console      ${rows}

    ${columns}=     get element count   xpath://table[@name="BookTable"]/tbody/tr/th
    log to console      ${columns}

    ##validating the column
    ##table column should contain     xpath of entire table     column_num      data
    table column should contain     xpath://table[@name="BookTable"]        2       Author

    ##table row should contain     xpath of entire table     row_num      data
    table row should contain        xpath://table[@name="BookTable"]    5       Master In Selenium

    ##table cell should contain     xpath of entire table   row_num     column_num      data
    table cell should contain       xpath://table[@name="BookTable"]    6       4       2000


*** Keywords ***



##table column should contain
##table row should contain
##table cell should contain