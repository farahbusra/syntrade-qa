#SU17 - Verify that user is directed to the sign in page upon clicking the ‘Sign up’ button

*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${email}    //input[@id='email']
${password}    //input[@id='password']
${confirm_password}    //input[@id='confirm_password']
${password_error}    //*[@id="password_error"]
${invalid_confirm_password_msg}    //*[@id="invalid_confirm_password_msg"]

*** Test Cases ***
Navigate To Syntrade Signup Page
    Open Browser    https://app.syntrade.xyz/signup    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //*[@id="signup_form"]    10

Input A Valid Email
    Input Text    email    testingqa@gmail.com

Input A Valid Password
    Input Text    password    Abcde1234!
    Press Keys    None    ENTER
    Press Keys    None    TAB

Re-enter The Same Password
    Input Text    confirm_password    Abcde1234!
    Press Keys    None    ENTER
    Element Should Not Be Visible    invalid_confirm_password_msg

Click The Signup Button
    Click Button    submit