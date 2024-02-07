*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://omayo.blogspot.com/
${browser}    chrome

*** Test Cases ***
AlertTests
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Select Frame    id:frame1
    Unselect Frame
    