#SU07 - Entering password with less than 8 characters in length and has 1 upper case letter

*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${email}    //input[@id='email']
${password}    //input[@id='password']
${invalid_password_msg}    //*[@id="invalid_password_msg"]

*** Test Cases ***
Navigate To Syntrade Signup Page
    Open Browser    https://app.syntrade.xyz/signup    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //*[@id="signup_form"]    10

Input A Valid Email
    Input Text    email    testingqa@gmail.com

Input An Invalid Password
    Input Text    password    Abcde
    Wait Until Page Contains Element    invalid_password_msg    5    