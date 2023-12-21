*** Settings ***
Documentation    To validate the Login Form
Library     SeleniumLibrary

*** Test Cases ***
Validate Unsuccessful Login
    Open the Browser with URL
    Fill the login form
    Verify error message is correct


*** Keywords ***
Open the Browser with URL
    Create Webdriver    Chrome  executable_path=/Vibha_Personal/RobotFramework_Demo/drivers/chromedriver_linux64
    Go To    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
    Maximize Browser Window
    Set Selenium Implicit Wait    5

Fill the login form
   Input Text    css:input[name=username]   Admin
   Input Password    css:input[name=password]   Admin
   Click Button    css:.orangehrm-login-button