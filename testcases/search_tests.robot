*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.google.com

*** Test Cases ***
SearchTest
    open browser    ${url}    ${browser}
    SearchText
    
*** Keywords ***
SearchText
    Click Element    //*[@aria-label='Search']
    Input Text    //*[@aria-label='Search']    Robot Framework
    Click Element    //input[@aria-label='Google Search']