*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://omayo.blogspot.com/

*** Test Cases ***
CheckBoxTest
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    3

    Select Checkbox    id:checkbox1
    Select Checkbox    id:checkbox2
    Select Checkbox    //input[@value='Laptop']
    Unselect Checkbox    id:checkbox1    
    Close Browser