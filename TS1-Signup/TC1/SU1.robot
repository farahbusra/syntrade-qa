#SU01 - Verify that the “Log in” hypertext link leads users to Login page

*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${link-login}    //*[@id='link-login']

*** Test Cases ***
Open Syntrade Signup Page
    Open Browser    https://app.syntrade.xyz/signup    chrome
    Maximize Browser Window

Click The Login Hypertext Link
    Click Element    link-login
    Wait Until Element Is Visible    link-login