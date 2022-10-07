*** Settings ***
Documentation   This file is filled with tests, and is linked to the steps file via Gherkin methodology.
...             Cannot mix BDD and DDT(data-driven-test), that's why there is no scenario outline.
...             Test setup is used for prerequired steps and starting the browser.
...             Test Teardown closes the browser and takes a screenshot if the test fails.
Resource        ../Swag_Labs_steps/Swag_Labs_steps.robot
Resource        ../Test_Setup/Test_Setup.robot
Test Setup      Browser startup
Test Teardown   Close Browser Window
Default Tags    Smoke


*** Test Cases ***

Logging in
    Set Tags    Regression

    Given User is on  "LoginPage"
    When Insert credentials and log in
    Then User is on   "Homepage"

Logging in with wrong username
    Set Tags    Regression

    Given User is on  "LoginPage"
    When Insert wrong credentials and log in
    Then Wrong credentials notification is visible

Check going to item page
    Set Tags    Regression

    Given User is on  "LoginPage"
    And Insert credentials and log in
    When User clicks on item
    Then User is on product page

Check adding to cart
    Set Tags    Regression

    Given User is on  "LoginPage"
    And Insert credentials and log in
    When User adds product to cart
    Then Product can be found in cart

Check ordering a product
    Set Tags    Regression

    Given User is on  "LoginPage"
    And Insert credentials and log in
    When User orders a product
    Then User is on   "CheckoutPage"

