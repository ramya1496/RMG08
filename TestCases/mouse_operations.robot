*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url1}      https://swisnl.github.io/jQuery-contextMenu/demo.html
${url2}     https://testautomationpractice.blogspot.com/
${url3}     http://dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
${browser}      Chrome

*** Test Cases ***
#Right click
#    open browser    ${url1}      ${browser}
#    maximize browser window
#    sleep   2
#    ##To right click = open context menu        xpath_of_right_click
#    open context menu       xpath://span[text()="right click me"]

#Double click
#    open browser    ${url2}     ${browser}
#    maximize browser window
#    sleep   3
#    double click element        xpath://button[text()="Copy Text"]
#    sleep   3

Drag and drop
    open browser    ${url3}     ${browser}
    maximize browser window
    sleep   3
    ##drag and drop     id of draggable     id of droppable
    drag and drop   id:box1     id:box101
    sleep   3
    drag and drop       id:box5     id:box105
    sleep   3
    close browser













