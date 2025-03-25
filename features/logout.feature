Feature: Logout Functionality

  Scenario: Successful Logout
    Given the user is logged in
    When the user clicks on the "Logout" button
    Then the system should end the user session
    And the system should redirect the user to the login page
    And the system should display the notification "Anda telah logout"