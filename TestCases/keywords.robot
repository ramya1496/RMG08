#*** Settings ***
#Library     SeleniumLibrary
#
#*** Variables ***
#${country_url}      https://www.countries-ofthe-world.com/
#${keywords_url}     https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
#${browser}      Chrome
#
#*** Test Cases ***
#TC1
#    Launch Country URL browser
#    sleep   4
#    Launch Resources URL
#    sleep   4
#    close all browsers
#
#
#*** Resources ***
#Launch Country URL browser
#    open browser    ${country_url}      ${browser}
#    maximize browser window
#
#Launch Resources URL
#    open browser        ${keywords_url}     ${browser}
#    maximize browser window

##############################################################
#*** Settings ***
#Library     SeleniumLibrary
#
#*** Variables ***
#${country_url}      https://www.countries-ofthe-world.com/
#${keywords_url}     https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
#${browser}      Chrome
#
#*** Test Cases ***
#TC1
#    Launch browser      ${country_url}      ${browser}
#    sleep   4
#    Launch browser      ${keywords_url}     ${browser}
#    sleep   4
#    Close My browser
#
#
#*** Keywords ***
#Launch browser
#    [Arguments]     ${app_url}      ${app_browser}
#    open browser    ${app_url}      ${app_browser}
#    maximize browser window
#
#Close My browser
#    close all browsers


################
*** Settings ***
Library     SeleniumLibrary
Resource        C:/Users/Ramya/PycharmProjects/RFA_RMG8/Resources/keyword1.robot    #../Resources/keyword1.robot

*** Variables ***
${country_url}      https://www.countries-ofthe-world.com/
${keywords_url}     https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
${browser}      Chrome

*** Test Cases ***
TC1
    Launch browser      ${country_url}      ${browser}
    sleep   4
    Launch browser      ${keywords_url}     ${browser}
    sleep   4
    Close My browser













