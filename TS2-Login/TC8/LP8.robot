#LP08 - Verify that by clicking the eye icon enables the password visibility

*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${email}    //input[@id='email']
${password}    //input[@id='password']
${eye_icon_opened}    //*[@id="eye_icon_opened"]

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
    Input Text    password    Abcde1234!
    Click Element    eye_icon_opened
    Element Should Be Visible    password

    