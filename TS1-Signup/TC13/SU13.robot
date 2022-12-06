#SU13 - Click sign up button after entering email 

*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${email}    //input[@id='email']
${password_error}    //*[@id="password_error"]
${invalid_confirm_password_msg}    //*[@id="invalid_confirm_password_msg"]
${submit}    //button[@id='submit']

*** Test Cases ***
Navigate To Syntrade Signup Page
    Open Browser    https://app.syntrade.xyz/signup    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //*[@id="signup_form"]    10

Input A Valid Email
    Input Text    email    testingqa@gmail.com

Click The Signup Button
    Click Element    submit
    Element Should Be Visible    password_error
    Element Should Be Visible    invalid_confirm_password_msg