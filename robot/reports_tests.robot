*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem
Suite Setup       Open Browser    ${LOGIN_URL}    ${BROWSER}
Suite Teardown    Close Browser

*** Variables ***
${LOGIN_URL}      http://yourapp.com/login
${BROWSER}        chrome

*** Test Cases ***
Generate And Download Reports
    [Documentation]    Test case for generating and downloading reports in PDF/Excel formats.
    Go To Reports Page
    Generate Report    PDF
    Download Report    PDF
    Generate Report    Excel
    Download Report    Excel

*** Keywords ***
Go To Reports Page
    [Documentation]    Navigate to the reports page.
    Click Element    xpath=//a[@href='/reports']

Generate Report
    [Arguments]    ${format}
    [Documentation]    Generate a report in the specified format.
    Click Element    xpath=//button[@id='generate-report']
    Select From List By Value    xpath=//select[@id='report-format']    ${format}
    Click Element    xpath=//button[@id='confirm-generate']

Download Report
    [Arguments]    ${format}
    [Documentation]    Download the generated report in the specified format.
    Click Element    xpath=//button[@id='download-report-${format}']