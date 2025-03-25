Feature: Dashboard Functionality

  Scenario: Display Employee Data Summary
    Given the user is logged in as an HR
    When the user navigates to the dashboard
    Then the dashboard should display the total number of employees by company
    And the dashboard should display the total number of employees by employment status
    And the dashboard should display the total number of employees by position

  Scenario: Display New Employee Count
    Given the user is logged in as an HR
    When the user navigates to the dashboard
    Then the dashboard should display the count of new employees by company
    And the dashboard should display the count of new employees by employment status
    And the dashboard should display the count of new employees by position

  Scenario: Display Resigned Employee Count
    Given the user is logged in as an HR
    When the user navigates to the dashboard
    Then the dashboard should display the count of resigned employees by company
    And the dashboard should display the count of resigned employees by employment status
    And the dashboard should display the count of resigned employees by position

  Scenario: Display Attendance Percentage
    Given the user is logged in as an HR
    When the user navigates to the dashboard
    Then the dashboard should display the attendance percentage for office attendance
    And the dashboard should display the attendance percentage for remote attendance
    And the dashboard should display the attendance percentage for business trips
    And the dashboard should display the lateness rate
    And the dashboard should display the count of employees absent per day

  Scenario: Display Announcements
    Given the user is logged in as an HR
    When the user navigates to the dashboard
    Then the dashboard should display announcements related to the company