#SU04 - Entering a registered email

*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${email}    //input[@id='email']
${invalid_email_msg}    //*[id="invalid_email_msg"]

*** Test Cases ***
Navigate To Syntrade Signup Page
    Open Browser    https://app.syntrade.xyz/signup    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //*[@id="signup_form"]    10

Input A Valid Email
    Input Text    email    testingqa@gmail.com