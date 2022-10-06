*** Settings ***
Documentation     A tests file with reusable keywords.
...               Variables are imported from the "Lookgin_for_job_page" file.
...               Keywords are linked to the tests file via Gherkin methodology.
...               The first keyword is used as the base for starting the tests.
Library           SeleniumLibrary
Resource          ../Looking_for_job_page/Swag_Labs_page.robot
Resource          ../Test_Data/Test_Data.robot


*** Keywords ***

Insert credentials and log in
    Input Text    ${usernameInput}   ${username}
    Input Text    ${passwordInput}   ${password}
    Click Element    ${loginBtn}

Insert wrong credentials and log in
    Input Text    ${usernameInput}   ${wrongUsername}
    Input Text    ${passwordInput}   ${wrongPassword}
    Click Element    ${loginBtn}

User is on Homepage
    Element Should Be Visible    ${swagLabsLogo}

User is logged in
    Element Should Be Visible    ${inventoryList}

Wrong credentials notification is visible
    Element Should Be Visible    ${wrongCredentialsNotification}
    Element Text Should Be    ${wrongCredentialsNotification}    Epic sadface: Username and password do not match any user in this service

User clicks on item
    Click Element    ${backpackItem}

User is on product page
    Element Text Should Be    ${url}    https://www.saucedemo.com/inventory-item.html?id=4

User is on
    [Arguments]     ${page}
    Run Keyword And Return If    ${page}=="LoginPage"            Title Should Be    Swag Labs
    Run Keyword And Return If    ${page}=="LoginPage"     User is on Homepage
    Run Keyword And Return If    ${page}=="Homepage"    User is logged in