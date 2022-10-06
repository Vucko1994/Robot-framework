*** Settings ***
Library      SeleniumLibrary
Library      XML
Resource     Test_Setup_Variables.robot


*** Keywords ***

Browser startup
    Open Browser    ${Website}   ${Browser}
    Maximize Browser Window
    Set Selenium Speed    ${Delay}

Close Browser Window
    Close Browser
    Log To Console  Test Completed