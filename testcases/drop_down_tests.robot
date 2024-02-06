*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://omayo.blogspot.com/

*** Test Cases ***
DropDownTests
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    Select From List By Index    //*[@name='SiteMap']    3
    Sleep    2
    Select From List By Label    //*[@name='SiteMap']    doc 4
    Sleep    2
    Select From List By Value    //*[@name='SiteMap']    ghi
    Sleep    2
    Close Browser