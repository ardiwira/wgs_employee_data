Feature: Notifications and Reminders

  Scenario: Notify employee of status change
    Given an employee with ID "12345" exists
    When the employee's status is changed to "Resigned"
    Then the system should send a notification to the employee
    And the notification should state "Your employment status has changed to Resigned."

  Scenario: Notify HR of document expiration
    Given an employee with ID "12345" has a document "NPWP" that expires in 30 days
    When the document expiration is detected
    Then the system should send a notification to HR
    And the notification should state "The NPWP document for employee ID 12345 is expiring soon."

  Scenario: Notify employee of password change
    Given an employee with ID "12345" exists
    When the employee changes their password
    Then the system should send a notification to the employee
    And the notification should state "Your password has been successfully changed."

  Scenario: Notify HR of new employee addition
    Given a new employee with ID "67890" is added to the system
    When the employee is successfully added
    Then the system should send a notification to HR
    And the notification should state "A new employee with ID 67890 has been added to the system."