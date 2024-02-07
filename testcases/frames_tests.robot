*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://demo.automationtesting.in/Register.html
${browser}    chrome

*** Test Cases ***
FrameTests
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Select Frame    id:frame1
    Unselect Frame
    