#TC16 - Click sign up button after entering email, password and re-entering password

*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${email}    //input[@id='email']
${password}    //input[@id='password']
${confirm_password}    //input[@id='confirm_password']
${submit}    //button[@id='submit']

*** Test Cases ***
Signup To Syntrade
    Open Browser    https://app.syntrade.xyz/signup    chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //*[@id="signup_form"]    10
    Input Text    email    testingqa@gmail.com    
    Input Text    password    Abcd1234!
    Press Keys    None    ENTER
    Press Keys    None    TAB
    Input Text    confirm_password    Abcd1234!
    Press Keys    None    ENTER
    Click Button    submit