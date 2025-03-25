*** Dashboard Page Object Model ***

*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${DASHBOARD_URL}    http://example.com/dashboard
${EMPLOYEE_COUNT}   xpath=//div[@id='employee-count']
${ATTENDANCE_PERCENTAGE}   xpath=//div[@id='attendance-percentage']
${ANNOUNCEMENTS}   xpath=//div[@id='announcements']

*** Keywords ***
Open Dashboard Page
    [Documentation]    Opens the dashboard page.
    Go To    ${DASHBOARD_URL}

Get Employee Count
    [Documentation]    Retrieves the total number of employees displayed on the dashboard.
    ${count}=    Get Text    ${EMPLOYEE_COUNT}
    [Return]    ${count}

Get Attendance Percentage
    [Documentation]    Retrieves the attendance percentage displayed on the dashboard.
    ${percentage}=    Get Text    ${ATTENDANCE_PERCENTAGE}
    [Return]    ${percentage}

Get Announcements
    [Documentation]    Retrieves the announcements displayed on the dashboard.
    ${announcements}=    Get Text    ${ANNOUNCEMENTS}
    [Return]    ${announcements}