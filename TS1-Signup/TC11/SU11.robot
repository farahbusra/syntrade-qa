#SU11 - Re-entering password that do not match with previously inserted password

*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${email}    //input[@id='email']
${password}    //input[@id='password']
${confirm_password}    //input[@id='confirm_password']
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

Input An Invalid Confirm Password
    Input Text    confirm_password    Abcd1234a!
    Element Should Be Visible    invalid_confirm_password_msg