*** Keywords ***
Launch browser
    [Arguments]     ${app_url}      ${app_browser}
    open browser    ${app_url}      ${app_browser}
    maximize browser window

Close My browser
    close all browsers
