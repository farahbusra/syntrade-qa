#TS02 - VERIFY Navigating to the signup page

*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Open Syntrade Homepage
    Open Browser    https://www.syntrade.xyz/    chrome
    Maximize Browser Window

Navigate To The Signup Page
    Wait Until Page Contains Element    //*[@id="nav-container"]    30
    Click Element    //*[@id="trade_now"]    
