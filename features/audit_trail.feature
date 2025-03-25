Feature: Audit Trail

  Scenario: Track changes in employee data
    Given I am logged in as a "HR" user
    When I update the employee data for "John Doe"
    Then the system should record the change in the audit trail
    And the audit trail should show the previous and new values for the updated fields

  Scenario: View audit trail records
    Given I am logged in as a "Manager HR" user
    When I navigate to the audit trail section
    Then I should see a list of all changes made to employee data
    And each record should display the user who made the change, the timestamp, and the details of the change

  Scenario: Filter audit trail records
    Given I am logged in as a "Super Admin" user
    When I apply a filter for changes made by "HR" user
    Then I should see only the audit trail records related to changes made by "HR" user

  Scenario: Export audit trail records
    Given I am logged in as a "HR" user
    When I choose to export the audit trail records
    Then the system should generate a downloadable file in PDF/Excel format
    And the file should contain all the audit trail records displayed on the screen