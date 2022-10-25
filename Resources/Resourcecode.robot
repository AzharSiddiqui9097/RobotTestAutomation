*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Launch Browser
    [Arguments]    ${url}     ${browser}
    open browser    ${url}     ${browser}
    maximize browser window

Quit Browser
    close all browsers

Check Title of the page
    [Arguments]    ${login_page-title}
    title should be     ${login_page-title}

Enter Text Value
    [Arguments]     ${locator}      ${text_value}
    input text      ${locator}      ${text_value}

Hit Button
    [Arguments]    ${butoon_locator}
    press keys     ${butoon_locator}      RETURN




