Feature: Login Functionality

  Scenario: Successful Login for HR
    Given the user is on the login page
    When the user enters the username "user_hradm_001"
    And the user enters the password "Password1"
    And the user clicks the "Login" button
    Then the system should verify the user credentials
    And the system should display the dashboard
    And the system should show the notification "Login Berhasil"

  Scenario: Successful Login for Admin HR
    Given the user is on the login page
    When the user enters the username "user_hradm_001"
    And the user enters the password "Password1"
    And the user clicks the "Login" button
    Then the system should verify the user credentials
    And the system should display the dashboard
    And the system should show the notification "Login Berhasil"

  Scenario: Successful Login for Other Employees
    Given the user is on the login page
    When the user enters the username "user_employee_001"
    And the user enters the password "Password1"
    And the user clicks the "Login" button
    Then the system should verify the user credentials
    And the system should display the dashboard
    And the system should show the notification "Login Berhasil"

  Scenario: Invalid Login Attempt
    Given the user is on the login page
    When the user enters the username "invalid_user"
    And the user enters the password "wrong_password"
    And the user clicks the "Login" button
    Then the system should not verify the user credentials
    And the system should display an error message "Invalid username or password"