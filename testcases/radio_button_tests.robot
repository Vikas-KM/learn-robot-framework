*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://omayo.blogspot.com/

*** Test Cases ***
TestRadio
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Select Radio Button    gender    female
    Sleep    3
    Select Radio Button    gender    male
    Sleep    3
    Close Browser