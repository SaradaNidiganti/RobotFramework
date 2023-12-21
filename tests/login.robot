*** Settings ***
Documentation    To validate login feature
Library    SeleniumLibrary

*** Test Cases ***
Validate Successful Login
    open the browser with the mortgate payment URL
    fill the login form
    wait until it checks navigate to next page or not

*** Variables ***
${browser}    Chrome
${URL}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login   

*** Keywords ***
open the browser with the mortgate payment URL
    Open Browser        ${URL}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains    Login
    Title Should Be    OrangeHRM
fill the login form
    ${userName}    Set Variable    name:username
    Element Should Be Visible    ${userName}
    Element Should Be Enabled    ${userName}
    Input Text    ${userName}    Admin
    Sleep    5
    ${password}    Set Variable    name:password
    Element Should Be Visible    ${password}
    Element Should Be Enabled    ${password}
    Input Password    ${password}    admin123
    Sleep    4
    ${login}    Set Variable    xpath://button[@type='submit']    
    Click Button    ${login}
wait until it checks navigate to next page or not
    Wait Until Page Contains    Dashboard
    Sleep    3


