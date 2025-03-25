*** Settings ***
Library           SeleniumLibrary
Library           OperatingSystem
Resource         ../resources/keywords/common.robot
Resource         ../resources/keywords/user_management_keywords.robot

*** Variables ***
${BASE_URL}      http://your-application-url.com

*** Test Cases ***
Create New Employee
    [Documentation]    Test case for creating a new employee.
    Open Browser    ${BASE_URL}    chrome
    Go To    ${BASE_URL}/user_management
    Fill Employee Form    John Doe    johndoe@example.com    1234567890    HR    Active
    Submit Employee Form
    Page Should Contain    Employee created successfully
    Close Browser

Read Employee Data
    [Documentation]    Test case for reading employee data.
    Open Browser    ${BASE_URL}    chrome
    Go To    ${BASE_URL}/user_management
    Search Employee    John Doe
    Page Should Contain    John Doe
    Close Browser

Update Employee Data
    [Documentation]    Test case for updating employee data.
    Open Browser    ${BASE_URL}    chrome
    Go To    ${BASE_URL}/user_management
    Search Employee    John Doe
    Click Edit Button
    Update Employee Form    John Doe Updated    johndoe_updated@example.com    0987654321
    Submit Employee Form
    Page Should Contain    Employee updated successfully
    Close Browser

Delete Employee Data
    [Documentation]    Test case for deleting employee data.
    Open Browser    ${BASE_URL}    chrome
    Go To    ${BASE_URL}/user_management
    Search Employee    John Doe Updated
    Click Delete Button
    Confirm Deletion
    Page Should Contain    Employee deleted successfully
    Close Browser