# WGS Employee Data Test

This project is designed for testing the WGS Employee Data application, which manages employee information and functionalities at Walden Global Services (WGS). The testing framework utilizes Gherkin syntax for behavior-driven development (BDD) and Robot Framework for automated testing.

## Project Structure

- **features/**: Contains Gherkin feature files that outline the application's functionalities.
  - **login.feature**: Scenarios for login functionality, including user roles and input validation.
  - **dashboard.feature**: Scenarios for dashboard functionalities, covering employee data summaries and attendance.
  - **user_management.feature**: Scenarios for user management, detailing CRUD operations for employee data.
  - **role_management.feature**: Scenarios for role management, describing user roles and access levels.
  - **reports.feature**: Scenarios for generating and downloading reports in PDF/Excel formats.
  - **notifications.feature**: Scenarios for notifications related to employee status changes.
  - **audit_trail.feature**: Scenarios for tracking changes in employee data.
  - **logout.feature**: Scenarios for logout functionality, including session termination.

- **robot/**: Contains Robot Framework test cases for various functionalities.
  - **login_tests.robot**: Test cases for login functionality.
  - **dashboard_tests.robot**: Test cases for dashboard functionalities.
  - **user_management_tests.robot**: Test cases for user management operations.
  - **role_management_tests.robot**: Test cases for role management.
  - **reports_tests.robot**: Test cases for report generation.
  - **notifications_tests.robot**: Test cases for notifications.
  - **audit_trail_tests.robot**: Test cases for audit trail functionality.
  - **logout_tests.robot**: Test cases for logout functionality.

- **resources/**: Contains keywords and page objects used in the tests.
  - **keywords/**: Defines common and specific keywords for various functionalities.
    - **common.robot**: Common keywords used across tests.
    - **login_keywords.robot**: Keywords related to login functionality.
    - **user_management_keywords.robot**: Keywords for user management operations.
  - **page_objects/**: Outlines the page object model for different pages.
    - **login_page.robot**: Page object model for the login page.
    - **dashboard_page.robot**: Page object model for the dashboard.
    - **user_management_page.robot**: Page object model for user management.

- **results/**: Directory to store test results.
  - **.gitkeep**: Keeps the results directory in version control.

- **requirements.txt**: Lists the dependencies required for the project.

## Setup Instructions

1. Clone the repository to your local machine.
2. Navigate to the project directory.
3. Install the required dependencies listed in `requirements.txt`.
4. Run the tests using Robot Framework or any compatible test runner.

## Usage Guidelines

- Ensure that the WGS Employee Data application is running before executing the tests.
- Modify the test data as necessary to fit your testing scenarios.
- Review the results in the `results/` directory after running the tests.

## Contribution

Feel free to contribute to this project by submitting issues or pull requests. Your feedback and contributions are welcome!