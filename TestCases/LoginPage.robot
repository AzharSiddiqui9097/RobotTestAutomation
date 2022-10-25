*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resourcecode.robot
Variables    ../Locators/locators.py
Variables    ../Variables/variables.py
Suite Setup    Launch Browser   ${url}      ${browser}
Suite Teardown    Quit Browser

*** Variables ***
${url}      https://login.replicon.com/DefaultV2.aspx
${browser}      Chrome
*** Test Cases ***
Test Login page
    set selenium implicit wait   10seconds
    Check Title of the page     ${LOGIN_PAGE_TITLE}
    Enter Text Value    ${company_name}     ${company_key}
    Hit Button      ${nxt_button}
    wait until element is visible    ${user_name_element}
    Enter Text Value    ${user_name_element}      ${user_name_text}
    Enter Text Value    ${password_element}        ${password_text}
    select checkbox    name:ctl00$ContentPlaceHolder1$RememberMeCheckBox
    Hit Button      ${login_button}
    sleep    3
