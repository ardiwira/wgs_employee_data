*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem
Resource         ../resources/keywords/common.robot
Resource         ../resources/keywords/login_keywords.robot
Resource         ../resources/keywords/user_management_keywords.robot

*** Variables ***
${LOGIN_URL}     http://example.com/login
${DASHBOARD_URL} http://example.com/dashboard

*** Test Cases ***
Verify Role Management Access for Super Admin
    [Documentation]    Verify that Super Admin has full access to all features.
    Open Browser    ${LOGIN_URL}    chrome
    Input Username    user_hradm_001
    Input Password    Password1
    Click Login Button
    Page Should Contain    Dashboard
    Click On Role Management
    Page Should Contain    "Access to all features"

Verify Role Management Access for HR
    [Documentation]    Verify that HR has CRUD access to employee data.
    Open Browser    ${LOGIN_URL}    chrome
    Input Username    user_hradm_001
    Input Password    Password1
    Click Login Button
    Page Should Contain    Dashboard
    Click On Role Management
    Page Should Contain    "CRUD access to employee data"

Verify Role Management Access for Auditor
    [Documentation]    Verify that Auditor can view all employee data but cannot edit.
    Open Browser    ${LOGIN_URL}    chrome
    Input Username    user_auditor
    Input Password    Password1
    Click Login Button
    Page Should Contain    Dashboard
    Click On Role Management
    Page Should Contain    "View employee data"
    Page Should Not Contain    "Edit employee data"

Verify Role Management Access for Employee
    [Documentation]    Verify that Employee can only view and update their own data.
    Open Browser    ${LOGIN_URL}    chrome
    Input Username    user_employee
    Input Password    Password1
    Click Login Button
    Page Should Contain    Dashboard
    Click On Role Management
    Page Should Contain    "View own data"
    Page Should Not Contain    "Access to other employee data"

*** Keywords ***
Input Username
    [Arguments]    ${username}
    Input Text    id=username    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    id=password    ${password}

Click Login Button
    Click Button    id=login-button

Click On Role Management
    Click Link    Role Management