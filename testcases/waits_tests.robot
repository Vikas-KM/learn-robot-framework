*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demowebshop.tricentis.com

*** Test Cases ***
ImplicitWaitTests
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    ${speed}    Get Selenium Speed
    Log To Console    ${speed}
    Set Selenium Speed    2

    Click Element    //*[a='Register']
    Select Radio Button    Gender    M
    Input Text    id:FirstName    Vikas
    Input Text    id:LastName    KM
    Input Text    id:Email    vikki.km@gmail.com
    Input Password    id:Password    password
    Input Password    id:ConfirmPassword    password
    Click Button    id:register-button
    ${speed}    Get Selenium Speed
    Log To Console    ${speed}
    Close Browser
