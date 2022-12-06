#TS03 - VERIFY Navigating to the signup page via QR code

*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Open Syntrade Homepage
    Open Browser    https://www.syntrade.xyz/    chrome
    Maximize Browser Window

Scroll To The Footer
    Wait Until Page Contains Element    //*[@id="nav-container"]    30
    Scroll Element Into View    //*[@id="footer-container"]

Navigate To The Signup Page
    Click Element    //*[@id="qr-container"]
