#LP01 - Entering an invalid email

*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${email}    //input[@id='email']
${invalid_email_msg}    //*[@id="invalid_email_msg"]

*** Test Cases ***
Open Syntrade Login Page
    Open Browser    https://app.syntrade.xyz/login    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //*[@id="login_form"]    10

Input An Invalid Email
    Input Text    email    testingqa@gmail
    Element Should Be Visible    invalid_email_msg
   
   