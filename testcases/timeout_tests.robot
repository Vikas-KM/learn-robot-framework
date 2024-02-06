*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://demowebshop.tricentis.com

*** Test Cases ***
ImplicitWaitTests
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    # This overrides the deault 5 seconds below 
    # for wait until commands only
    Set Selenium Timeout    10
    ${time}    Get Selenium Timeout
    Log To Console    ${time}

    Click Element    //*[a='Register']

    # By Default it waits for 5 seconds
    Wait Until Page Contains Element    //*[h1='Register']

    # This is not affected by the selenium timeout
    # But they are affected by the selenium implicit wait
    Set Selenium Implicit Wait    5
    Select Radio Button    Gender    M
    Input Text    id:FirstName    Vikas
    Input Text    id:LastName    KM
    Input Text    id:Email    vikki.km@gmail.com
    Input Password    id:Password    password
    Input Password    id:ConfirmPassword    password
    Click Button    id:register-button
    ${time}    Get Selenium Implicit Wait
    Log To Console    ${time}
    Close Browser
