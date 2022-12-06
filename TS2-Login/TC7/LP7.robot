#LP07 - Verify that user is directed to the sign up page upon clicking the sign up link

*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${link-signup}    //*[@id='link-signup']

*** Test Cases ***
Open Syntrade Login Page
    Open Browser    https://app.syntrade.xyz/login    chrome
    Maximize Browser Window

Click The Signup Hypertext Link
    Click Element    link-signup
