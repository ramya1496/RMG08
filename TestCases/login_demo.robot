#*** Settings ***
#Library     SeleniumLibrary
#
#*** Variables ***
#${url}      https://demo.guru99.com/test/newtours/index.php
#${browser}      Chrome
#
#*** Test Cases ***
#Login
#    open browser    ${url}      ${browser}
#    maximize browser window
#    input text      name:userName       tutorial
#    input text      name:password       tutorial
#    click element   name:submit
#
#Registration
#    open browser    ${url}      ${browser}
#    maximize browser window
#    click element       xpath://a[text()="REGISTER"]
#    sleep   3
#    input text      name:firstName      Ramya
#    input text      name:lastName       Rao
#    input text      name:phone          9087654321
#    input text      id:userName         ramyarao@gmail.com
#    input text      name:address1       katriguppe
#    input text      name:city       Bangalore
#    input text      name:state      Karnataka
#    input text      name:postalCode         560090
#    select from list by value       country         INDIA
#    input text      name:email      RamyaR
#    input text      name:password       123456
#    input text      name:confirmPassword        123456
#
#
#*** Keywords ***

###########################################################
*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/keywords2.robot

*** Test Cases ***
#LoginDemo
#    Opening browser
#    Enter LoginUsername     tutorial
#    Enter LoginPassword     tutorial
#    Click on submit

RegisterDemo
    Opening browser
    Click on Register
    Enter firstname     Ramya
    Enter lastname      Rao
    Enter PhoneNumber       1234567890
    Enter RegisterEmail     ramyarao@gmail.com
    Enter Address       Katriguppe
    Enter City      Bengaluru
    Enter State     Karnataka
    Enter Postalcode        560091
    Country dropdown    INDIA
    Enter RegUsername       Ramya R
    Enter RegPassword       12345
    ConfirmPassword     12345


















