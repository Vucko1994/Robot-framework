*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...               The system specific keywords created here form our own domain specific language.
...               They utilize keywords provided by the imported SeleniumLibrary.
...               It serves for storing all needed variables of the web pages.
Library           SeleniumLibrary


*** Variables ***

${productName}                      xpath://div[@class="inventory_details_name large_size"]
${usernameInput}                    xpath://input[@id="user-name"]
${passwordInput}                    xpath://input[@id="password"]
${swagLabsLogo}                     xpath://div[@class="bot_column"]
${loginBtn}                         xpath://input[@id="login-button"]
${inventoryList}                    xpath://div[@class="inventory_list"]
${wrongCredentialsNotification}     xpath://h3[@data-test="error"]
${backpackItem}                     xpath://img[@alt='Sauce Labs Backpack']
${addToCartBtn}                     xpath://button[@name="add-to-cart-sauce-labs-backpack"]
${removeBtn}                        xpath://button[@name="remove-sauce-labs-backpack"]
${cartBtn}                          xpath://a[@class="shopping_cart_link"]
${productNameInCart}                xpath://div[@class="inventory_item_name"]
${checkoutBtn}                      xpath://button[@name="checkout"]
${firstNameInput}                   xpath://input[@placeholder="First Name"]
${lastNameInput}                    xpath://input[@placeholder="Last Name"]
${zipCodeInput}                     xpath://input[@placeholder="Zip/Postal Code"]
${continueBtn}                      xpath://input[@name="continue"]
${finishBtn}                        xpath://button[@name="finish"]
${ponyExpressImage}                 xpath://img[@alt="Pony Express"]
${completeHeader}                   xpath://h2[@class="complete-header"]
${completeText}                     xpath://div[@class="complete-text"]
${backToProductsBtn}                xpath://button[@name="back-to-products"]
