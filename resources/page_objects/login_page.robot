*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_PAGE_URL}    http://example.com/login
${USERNAME_FIELD}    id=username
${PASSWORD_FIELD}    id=password
${LOGIN_BUTTON}      id=login-button
${SUCCESS_NOTIFICATION}    xpath=//div[contains(text(), 'Login Berhasil')]

*** Keywords ***
Open Login Page
    Open Browser    ${LOGIN_PAGE_URL}    chrome
    Maximize Browser Window

Input Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Login Button
    Click Button    ${LOGIN_BUTTON}

Verify Successful Login
    Wait Until Element Is Visible    ${SUCCESS_NOTIFICATION}    timeout=10
    Element Should Be Visible    ${SUCCESS_NOTIFICATION}

Close Browser
    Close Browser