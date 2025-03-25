*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_PAGE}    http://example.com/login
${DASHBOARD_PAGE}    http://example.com/dashboard

*** Keywords ***
Open Login Page
    Open Browser    ${LOGIN_PAGE}    chrome
    Maximize Browser Window

Input Username
    [Arguments]    ${username}
    Input Text    id=username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    id=password    ${password}

Click Login Button
    Click Button    id=login-button

Verify Login Success
    Page Should Contain    Login Berhasil
    Location Should Be    ${DASHBOARD_PAGE}

Logout
    Click Button    id=logout-button
    Page Should Contain    Anda telah logout

*** Test Cases ***
Valid Login
    Open Login Page
    Input Username    user_hradm_001
    Input Password    Password1
    Click Login Button
    Verify Login Success

Invalid Login
    Open Login Page
    Input Username    invalid_user
    Input Password    invalid_password
    Click Login Button
    Page Should Contain    Invalid credentials