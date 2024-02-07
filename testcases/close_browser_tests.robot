*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url_1}    https://omayo.blogspot.com/
${url_2}    https://admin-demo.nopcommerce.com

*** Test Cases ***
CloseBrowserTests
    Open Browser    ${url_1}    ${browser}
    Maximize Browser Window

    Open Browser    ${url_2}    ${browser}
    Maximize Browser Window

    # Close Browser
    Close All Browsers

