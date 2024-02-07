*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demo.automationtesting.in/Register.html
${browser}    chrome

*** Test Cases ***
TabbedTests
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Click Link    SwitchTo
    Click Link    Windows

    Click Button    //button[@class='btn btn-info']

    Switch Window    Selenium
    ${title}    Get Title
    Log To Console    ${title}
    Switch Window    Frames & windows
    ${title}    Get Title
    Log To Console    ${title}
    Switch Window    Selenium
