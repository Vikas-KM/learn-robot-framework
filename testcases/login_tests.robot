*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://admin-demo.nopcommerce.com

*** Test Cases ***
LoginTest
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    LoginAndVerify

*** Keywords ***
LoginAndVerify
    Element Should Be Visible    //*[text()='Welcome, please sign in!']
    Click Element    //*[@id='Email']
    Input Text    //*[@id='Email']    admin@yourstore.com
    Click Element    //*[@id='Password']
    Input Text    //*[@id='Password']    admin
    Click Button    //*[@type='submit']
    Element Should Be Visible    //*[a='Logout']