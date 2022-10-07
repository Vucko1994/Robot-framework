*** Settings ***
Documentation     A tests file with reusable keywords.
...               Variables are imported from the "Lookgin_for_job_page" file.
...               Keywords are linked to the tests file via Gherkin methodology.
...               The first keyword is used as the base for starting the tests.
Library           SeleniumLibrary
Resource          ../Swag_Labs_page/Swag_Labs_page.robot
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
    Element Text Should Be    ${productName}    Sauce Labs Backpack
    Element Should Be Visible    ${backpackItem}

User adds product to cart
    Click Element    ${addToCartBtn}

Product can be found in cart
    Element Should Be Visible    ${removeBtn}
    Element Text Should Be    ${removeBtn}    REMOVE
    Click Element    ${cartBtn}
    Element Should Be Visible    ${productNameInCart}
    Element Text Should Be    ${productNameInCart}    Sauce Labs Backpack

User orders a product
    User adds product to cart
    Product can be found in cart
    Click Element    ${checkoutBtn}
    Input Text    ${firstNameInput}    Marko
    Input Text    ${lastNameInput}    Vuckovic
    Input Text    ${zipCodeInput}    18000
    Click Element    ${continueBtn}
    Element Should Be Visible    ${productNameInCart}
    Element Text Should Be    ${productNameInCart}    Sauce Labs Backpack
    Click Element    ${finishBtn}

User is on checkout page
    Element Should Be Visible    ${ponyExpressImage}
    Element Should Be Visible    ${completeHeader}
    Element Text Should Be    ${completeHeader}    THANK YOU FOR YOUR ORDER
    Element Should Be Visible    ${completeText}
    Element Text Should Be    ${completeText}    Your order has been dispatched, and will arrive just as fast as the pony can get there!
    Element Should Be Visible    ${backToProductsBtn}
    Element Text Should Be    ${backToProductsBtn}    BACK HOME

User is on
    [Arguments]     ${page}
    Run Keyword And Return If    ${page}=="LoginPage"            Title Should Be    Swag Labs
    Run Keyword And Return If    ${page}=="LoginPage"     User is on Homepage
    Run Keyword And Return If    ${page}=="Homepage"    User is logged in
    Run Keyword And Return If    ${page}=="CheckoutPage"    User is on checkout page