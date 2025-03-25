Feature: Reports Generation

  Scenario: Generate Employee Reports in PDF Format
    Given the user is logged in as "HR"
    When the user navigates to the "Reports" section
    And the user selects "PDF" as the report format
    And the user clicks on the "Generate Report" button
    Then the system should generate the report in PDF format
    And the system should display a notification "Report generated successfully"

  Scenario: Generate Employee Reports in Excel Format
    Given the user is logged in as "HR"
    When the user navigates to the "Reports" section
    And the user selects "Excel" as the report format
    And the user clicks on the "Generate Report" button
    Then the system should generate the report in Excel format
    And the system should display a notification "Report generated successfully"

  Scenario: Download Generated Report
    Given the user is logged in as "HR"
    When the user navigates to the "Reports" section
    And the user has generated a report in PDF format
    Then the user should see a "Download" button for the report
    When the user clicks on the "Download" button
    Then the report should be downloaded to the user's device

  Scenario: Handle Report Generation Errors
    Given the user is logged in as "HR"
    When the user navigates to the "Reports" section
    And the user selects an invalid report format
    And the user clicks on the "Generate Report" button
    Then the system should display an error message "Invalid report format selected"