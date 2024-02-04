*** Settings ***
Library    SeleniumLibrary
Library    ../dev_env/lib/python3.11/site-packages/robot/libraries/Telnet.py

*** Variables ***
${browser}    chrome
${url}    https://admin-demo.nopcommerce.com

*** Test Cases ***
TestInput
    Open Browser    ${url}     ${browser}
    Maximize Browser Window

    ${"email_input"}    Set Variable    id:Email
    
    Element Should Be Enabled    ${"email_input"}
    Element Should Be Visible    ${"email_input"}

    Input Text    ${"email_input"}    admin@yourstore.com
    Sleep    5
    Clear Element Text    ${"email_input"}
    Sleep    5
    Close Browser