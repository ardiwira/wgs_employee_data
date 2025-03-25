*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem
Resource         ../resources/keywords/common.robot
Resource         ../resources/keywords/notifications_keywords.robot

*** Variables ***
${BASE_URL}      http://your-application-url.com

*** Test Cases ***
Verify Notification for Status Change
    [Documentation]    Verify that the user receives a notification when their employment status changes.
    Open Browser    ${BASE_URL}    chrome
    Login As HR User
    Change Employee Status    employee_id    new_status
    ${notification}=    Get Notification Message
    Should Be Equal As Strings    ${notification}    "Status has been updated successfully."
    Close Browser

Verify Notification for Document Expiration
    [Documentation]    Verify that the user receives a notification for document expiration.
    Open Browser    ${BASE_URL}    chrome
    Login As HR User
    Check Document Expiration    employee_id
    ${notification}=    Get Notification Message
    Should Be Equal As Strings    ${notification}    "Your document is about to expire. Please update it."
    Close Browser

Verify Reminder for Upcoming Deadlines
    [Documentation]    Verify that the user receives reminders for upcoming deadlines.
    Open Browser    ${BASE_URL}    chrome
    Login As HR User
    Check Upcoming Deadlines
    ${reminder}=    Get Reminder Message
    Should Be Equal As Strings    ${reminder}    "You have upcoming deadlines for document renewals."
    Close Browser

*** Keywords ***
Login As HR User
    [Documentation]    Logs in as an HR user.
    Input Username    user_hradm_001
    Input Password    Password1
    Click Login Button

Change Employee Status
    [Arguments]    ${employee_id}    ${new_status}
    [Documentation]    Changes the employment status of an employee.
    Navigate To Employee Management Page
    Select Employee    ${employee_id}
    Set Status    ${new_status}
    Click Save Button

Check Document Expiration
    [Arguments]    ${employee_id}
    [Documentation]    Checks if the specified employee has any document expirations.
    Navigate To Employee Management Page
    Select Employee    ${employee_id}
    Verify Document Expiration Status

Check Upcoming Deadlines
    [Documentation]    Checks for any upcoming deadlines for document renewals.
    Navigate To Notifications Page
    Verify Upcoming Deadlines