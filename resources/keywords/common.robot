*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_PAGE}    path/to/login_page
${DASHBOARD_PAGE}    path/to/dashboard_page
${USER_MANAGEMENT_PAGE}    path/to/user_management_page

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN_PAGE}    chrome
    Maximize Browser Window

Close Browser
    Close Browser

Login As HR
    [Arguments]    ${username}    ${password}
    Input Text    username_field    ${username}
    Input Text    password_field    ${password}
    Click Button    login_button

Verify Login Success
    Page Should Contain    Login Berhasil

Navigate To Dashboard
    Go To    ${DASHBOARD_PAGE}

Navigate To User Management
    Go To    ${USER_MANAGEMENT_PAGE}

Logout
    Click Button    logout_button
    Page Should Contain    Anda telah logout

*** Test Cases ***
Example Test Case
    Open Browser To Login Page
    Login As HR    user_hradm_001    Password1
    Verify Login Success
    Navigate To Dashboard
    Logout
    Close Browser