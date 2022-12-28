*** Settings ***
Library     SeleniumLibrary
Variables   ./locators.py

*** Variables ***
${url}      https://demo.guru99.com/test/newtours/index.php
${browser}      Chrome

*** Keywords ***
Opening browser
    open browser    ${url}      ${browser}
    maximize browser window

Enter LoginUsername
    [Arguments]     ${user_name}
    input text      ${login_username}       ${user_name}

Enter LoginPassword
    [Arguments]     ${pwd}
    input text      ${login_password}       ${pwd}

Click on submit
    click element       ${login_submit}

Click on Register
    click element       xpath://a[text()="REGISTER"]

Enter firstname
    [Arguments]     ${f_name}
    input text      ${reg_fname}      ${f_name}

Enter lastname
    [Arguments]     ${l_name}
    input text      ${reg_lname}      ${l_name}

Enter PhoneNumber
    [Arguments]     ${ph_num}
    input text      ${reg_phnum}      ${ph_num}

Enter RegisterEmail
    [Arguments]         ${email}
    input text      ${reg_email}     ${email}

Enter Address
    [Arguments]     ${user_address}
    input text      ${address}       ${user_address}

Enter City
    [Arguments]     ${user_city}
    input text      ${city}       ${user_city}

Enter State
    [Arguments]     ${user_state}
    input text      ${state}      ${user_state}

Enter Postalcode
    [Arguments]     ${code}
    input text      ${postal_code}     ${code}

Country dropdown
    [Arguments]     ${country}
    select from list by value       country         ${country}

Enter RegUsername
    [Arguments]     ${reg_username1}
    input text      ${reg_username}      ${reg_username1}


Enter RegPassword
    [Arguments]     ${reg_pwd}
    input text      ${reg_password}   ${reg_pwd}

ConfirmPassword
    [Arguments]     ${confirm_reg_pwd}
    input text      ${confirm_pwd}    ${confirm_reg_pwd}















