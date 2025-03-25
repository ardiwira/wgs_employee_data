*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${USER_MANAGEMENT_PAGE}    path/to/user_management_page

*** Keywords ***
Create New Employee
    [Arguments]    ${name}    ${email}    ${phone}    ${position}
    Go To    ${USER_MANAGEMENT_PAGE}
    Input Text    id=name_input    ${name}
    Input Text    id=email_input    ${email}
    Input Text    id=phone_input    ${phone}
    Input Text    id=position_input    ${position}
    Click Button    id=create_button
    Wait Until Page Contains    Employee created successfully

Get Employee List
    Go To    ${USER_MANAGEMENT_PAGE}
    Click Button    id=view_employees_button
    Wait Until Page Contains    Employee List

Update Employee
    [Arguments]    ${employee_id}    ${new_name}    ${new_email}
    Go To    ${USER_MANAGEMENT_PAGE}
    Click Element    id=edit_button_${employee_id}
    Input Text    id=name_input    ${new_name}
    Input Text    id=email_input    ${new_email}
    Click Button    id=update_button
    Wait Until Page Contains    Employee updated successfully

Delete Employee
    [Arguments]    ${employee_id}
    Go To    ${USER_MANAGEMENT_PAGE}
    Click Element    id=delete_button_${employee_id}
    Confirm    Are you sure you want to delete this employee?
    Wait Until Page Contains    Employee deleted successfully

Search Employee
    [Arguments]    ${search_term}
    Go To    ${USER_MANAGEMENT_PAGE}
    Input Text    id=search_input    ${search_term}
    Click Button    id=search_button
    Wait Until Page Contains    Search results for ${search_term}