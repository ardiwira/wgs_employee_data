Feature: Role Management

  Scenario: View User Roles
    Given I am logged in as a Super Admin
    When I navigate to the Role Management page
    Then I should see a list of user roles
    And I should see the access levels for each role

  Scenario: Add a New Role
    Given I am logged in as a Manager HR
    When I navigate to the Role Management page
    And I click on "Add Role"
    And I enter "Intern" as the role name
    And I set the access level to "Limited"
    And I click on "Save"
    Then I should see a notification "Role added successfully"
    And I should see "Intern" in the list of user roles

  Scenario: Edit an Existing Role
    Given I am logged in as a Manager HR
    When I navigate to the Role Management page
    And I click on "Edit" next to "HR"
    And I change the access level to "Full"
    And I click on "Save"
    Then I should see a notification "Role updated successfully"
    And I should see "HR" with "Full" access level in the list of user roles

  Scenario: Delete a Role
    Given I am logged in as a Super Admin
    When I navigate to the Role Management page
    And I click on "Delete" next to "Intern"
    And I confirm the deletion
    Then I should see a notification "Role deleted successfully"
    And I should not see "Intern" in the list of user roles

  Scenario: Access Control Verification
    Given I am logged in as an Employee
    When I navigate to the Role Management page
    Then I should see a notification "Access Denied"
    And I should not see any user roles listed