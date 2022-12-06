

#TS01 - VERIFY Navigating to the page sections using the nav bar

*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Open Syntrade Homepage
    Open Browser    https://www.syntrade.xyz/    chrome
    Maximize Browser Window

Navigate To The Products Section
    Wait Until Page Contains Element    //*[@id="nav-container"]    30
    Click Element    //*[@id="product-nav"] 
    Wait Until Page Contains Element    //*[@id="card-container"]    30
    Click Button    //button[@id="back2top-btn"]

Navigate To The Trade Types Section
    Wait Until Page Contains Element    //*[@id="nav-container"]    30
    Click Element    //*[@id="trade-nav"] 
    Wait Until Page Contains Element    //*[@id="trade-types-list"]    30
    Click Button    //button[@id="back2top-btn"]

Navigate To The Reviews Section
    Wait Until Page Contains Element    //*[@id="nav-container"]    30
    Click Element    //*[@id="review-nav"]
    Wait Until Page Contains Element    //*[@id="review-grid"]    30
    Click Button    //button[@id="back2top-btn"]

Navigate To The FAQs Section
    Wait Until Page Contains Element    //*[@id="nav-container"]    30
    Click Element    //*[@id="faq-nav"]
    Wait Until Page Contains Element    //*[@id="faqs-list"]    30