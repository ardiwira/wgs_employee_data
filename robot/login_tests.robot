*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem
Resource         ../resources/keywords/login_keywords.robot
Resource         ../resources/page_objects/login_page.robot

*** Variables ***
${LOGIN_URL}     http://your-login-url.com
${USERNAME}      user_hradm_001
${PASSWORD}      Password1

*** Test Cases ***
Valid Login Test
    [Documentation]    Test valid login functionality for HR user
    Open Browser    ${LOGIN_URL}    chrome
    Input Username    ${USERNAME}
    Input Password    ${PASSWORD}
    Click Login Button
    Page Should Contain    Login Berhasil
    Close Browser

Invalid Login Test
    [Documentation]    Test invalid login functionality
    Open Browser    ${LOGIN_URL}    chrome
    Input Username    invalid_user
    Input Password    invalid_password
    Click Login Button
    Page Should Contain    Invalid credentials
    Close Browser

Logout Test
    [Documentation]    Test logout functionality
    Open Browser    ${LOGIN_URL}    chrome
    Input Username    ${USERNAME}
    Input Password    ${PASSWORD}
    Click Login Button
    Click Logout Button
    Page Should Contain    Anda telah logout
    Close Browser