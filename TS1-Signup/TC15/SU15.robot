#SU15 - Click sign up button before entering email, password and re-entering password

*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${email}    //input[@id='email']
${password}    //input[@id='password']
${invalid_email_msg}    //*[@id="invalid_email_msg"]
${password_error}    //*[@id="password_error"]
${invalid_confirm_password_msg}    //*[@id="invalid_confirm_password_msg"]
${submit}    //button[@id='submit']

*** Test Cases ***
Navigate To Syntrade Signup Page
    Open Browser    https://app.syntrade.xyz/signup    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //*[@id="signup_form"]    10

Click The Signup Button
    Click Element    submit
    Element Should Be Visible    invalid_email_msg    
    Element Should Be Visible    password_error
    Element Should Be Visible    invalid_confirm_password_msg