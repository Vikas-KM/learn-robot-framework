*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://omayo.blogspot.com/

*** Test Cases ***
MultiSelectTests
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Select From List By Index    //*[@id='multiselect1']    2
    Sleep    2
    Select From List By Label    //*[@id='multiselect1']    Volvo
    Sleep    2
    Select From List By Value    //*[@id='multiselect1']    audix
    Sleep    2
    Unselect All From List    //*[@id='multiselect1']
    Sleep    2
    Close Browser