*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...               The system specific keywords created here form our own domain specific language.
...               They utilize keywords provided by the imported SeleniumLibrary.
...               It serves for storing all needed variables of the web pages.
Library           SeleniumLibrary


*** Variables ***

${url} =                            Get Location
${usernameInput}                    xpath://input[@id="user-name"]
${passwordInput}                    xpath://input[@id="password"]
${swagLabsLogo}                     xpath://div[@class="bot_column"]
${loginBtn}                         xpath://input[@id="login-button"]
${inventoryList}                    xpath://div[@class="inventory_list"]
${wrongCredentialsNotification}     xpath://h3[@data-test="error"]
${backpackItem}                     xpath://img[@alt='Sauce Labs Backpack']
