*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/keywords/common.robot
Resource          ../resources/keywords/login_keywords.robot
Resource          ../resources/keywords/user_management_keywords.robot

*** Variables ***
${LOGIN_URL}      http://yourapp.com/login
${DASHBOARD_URL}  http://yourapp.com/dashboard

*** Test Cases ***
Logout Successfully
    [Documentation]    Verify that the user can log out successfully and is redirected to the login page.
    Open Browser    ${DASHBOARD_URL}    chrome
    Click Element    //button[text()='Logout']
    Wait Until Page Contains    Anda telah logout
    Location Should Be    ${LOGIN_URL}

Session Termination
    [Documentation]    Ensure that the session is terminated after logout.
    Open Browser    ${DASHBOARD_URL}    chrome
    Click Element    //button[text()='Logout']
    Wait Until Page Contains    Anda telah logout
    Go To    ${DASHBOARD_URL}
    Wait Until Page Contains    Login    timeout=5
    Page Should Contain Element    //input[@name='username']