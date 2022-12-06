#SU14 - Click sign up button after entering email and password l 

*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${email}    //input[@id='email']
${password}    //input[@id='password']
${invalid_confirm_password_msg}    //*[@id="invalid_confirm_password_msg"]
${submit}    //button[@id='submit']

*** Test Cases ***
Navigate To Syntrade Signup Page
    Open Browser    https://app.syntrade.xyz/signup    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //*[@id="signup_form"]    10

Input A Valid Email
    Input Text    email    testingqa@gmail.com

Input A Password
    Input Text    password    Abcde1234!

Click The Signup Button
    Click Element    submit
    Element Should Be Visible    invalid_confirm_password_msg