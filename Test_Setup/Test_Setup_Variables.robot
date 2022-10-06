*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...               The system specific keywords created here form our own domain specific language.
...               They utilize keywords provided by the imported SeleniumLibrary.
Library           SeleniumLibrary


*** Variables ***

${Browser}              Chrome
${Delay}                1s
${Website}              https://www.saucedemo.com/
