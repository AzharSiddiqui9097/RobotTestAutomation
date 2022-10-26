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
Test Admin Page
    set selenium implicit wait   10seconds
    Login Successfull
    click element      ${admin_button_element}
    title should be    ${admin_page_title}

*** Keywords ***
Login Successfull
    Enter Text Value    ${company_name}     ${company_key}
    Hit Button      ${nxt_button}
    wait until element is visible    ${user_name_element}
    Enter Text Value    ${user_name_element}      ${user_name_text}
    Enter Text Value    ${password_element}        ${password_text}
    select checkbox    name:ctl00$ContentPlaceHolder1$RememberMeCheckBox
    Hit Button      ${login_button}
    wait until page contains    Submit for Approval


