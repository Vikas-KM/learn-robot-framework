*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://omayo.blogspot.com/
${browser}    chrome

*** Test Cases ***
AlertTests
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    # Set Selenium Speed    2

    Click Button    id:alert1
    # Handle Alert    action=accept
    Handle Alert    action=dismiss

    Click Button    id:confirm
    Handle Alert    action=accept

    Click Button    id:prompt
    Alert Should Be Present    What is your name?
    # Handle Alert    action=leave