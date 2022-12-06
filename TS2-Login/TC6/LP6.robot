#LP6 - Verify that no error message shows up after email and password are entered

*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${email}    //input[@id='email']
${password}    //input[@id='password']
${invalid_email_msg}    //*[@id="invalid_email_msg"]
${password_error}    //*[@id="password_error"]

*** Test Cases ***
Open Syntrade Login Page
    Open Browser    https://app.syntrade.xyz/login    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //*[@id="login_form"]    10

Input A Valid Email
    Input Text    email    testingqa@gmail.com
    Press Keys    None    ENTER
    Element Should Not Be Visible    invalid_email_msg

Input A Valid Password
    Input Text    password    Abcdef123!
    Press Keys    None    ENTER
    Element Should Not Be Visible    password_error