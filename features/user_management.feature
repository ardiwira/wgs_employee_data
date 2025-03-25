Feature: User Management
   
  Scenario: Create a new employee with all required information
    Given the user navigates to "Add Employee" page
    When the user fills in the employee details with valid information
      | Field                     | Value                       |
      | Name Panggilan            | John Doe                   |
      | Nama Lengkap              | Johnathan Doe              |
      | Tempat, Tanggal Lahir     | Jakarta, 1990-01-01        |
      | Nomor Telepon             | 08123456789                |
      | Email Pribadi             | johndoe@example.com        |
      | Email Kantor              | john.doe@wgs.com          |
      | Alamat Rumah              | Jl. Kebon Jeruk No. 10     |
      | Alamat Tinggal Sekarang   | Jl. Kebon Jeruk No. 10     |
      | Foto Profil               | path/to/profile.jpg        |
      | Nama Orang Tua            | Mr. Doe                    |
      | Nama Pasangan             | Mrs. Doe                   |
      | Nama Saudara Kandung      | Jane Doe                   |
      | Nama Kontak Darurat       | Mary Doe                   |
      | Nomor Telepon Kontak Darurat | 08123456780              |
      | Alamat Kontak Darurat     | Jl. Kebon Jeruk No. 20     |
      | Tanggal Masuk Kerja       | 2023-01-01                 |
      | Company                   | WGS                        |
      | Posisi                    | Software Engineer           |
      | Status Kepegawaian        | Tetap                      |
      | Nomor Rekening            | 1234567890                 |
      | Nama Bank                 | Bank WGS                   |
      | Pendidikan Terakhir       | S1 Teknik Informatika      |
      | Detail Keahlian           | Python, Java, Soft Skills   |
      | Riwayat Penyakit          | None                       |
    And the user uploads the required documents
      | Document Type | File Path        |
      | KTP           | path/to/ktp.jpg  |
      | NPWP          | path/to/npwp.jpg |
      | Ijazah        | path/to/ijazah.pdf |
      | Transkrip Nilai | path/to/transkrip.pdf |
      | CV Pribadi    | path/to/cv_pribadi.pdf |
      | CV Perusahaan | path/to/cv_perusahaan.pdf |
    And the user clicks the "Save" button
    Then the employee should be successfully created
    And a confirmation message "Employee created successfully" should be displayed
    And the new employee should appear in the employee list

  Scenario: View employee list and search functionality
    Given the user navigates to "Employee List" page
    When the user enters "John" in the search field
    Then the system should display employees with "John" in their name
    When the user filters by position "Software Engineer"
    Then the system should display employees with position "Software Engineer"
    When the user filters by division "IT"
    Then the system should display employees from division "IT"
    When the user filters by status "Tetap"
    Then the system should display employees with status "Tetap"

  Scenario: View detailed employee information
    Given the user navigates to "Employee List" page
    When the user clicks on the employee "John Doe"
    Then the system should display the employee's detailed information
    And all employee information sections should be visible
      | Section |
      | Informasi Pribadi |
      | Informasi Keluarga |
      | Informasi Kepegawaian |
      | Pendidikan & Keahlian |
      | Riwayat Kesehatan |
      | Dokumen Karyawan |

  Scenario: Update an employee's information
    Given the user navigates to "Employee List" page
    When the user searches for the employee "John Doe"
    And the user clicks on the "Edit" button
    And the user updates the following information
      | Field           | Value                   |
      | Email Pribadi   | john.updated@example.com |
      | Nomor Telepon   | 08765432109             |
      | Status Kepegawaian | Kontrak               |
    And the user clicks the "Save" button
    Then the employee's information should be updated successfully
    And a confirmation message "Employee updated successfully" should be displayed

  Scenario: Mark an employee as inactive (soft delete)
    Given the user navigates to "Employee List" page
    When the user searches for the employee "John Doe"
    And the user clicks on the "Delete" button
    And the user confirms the deletion
    Then the employee should be marked as inactive
    And a confirmation message "Employee deleted successfully" should be displayed
    And the employee should not appear in the active employee list

  Scenario: Update an employee with document upload
    Given the user navigates to "Employee List" page
    When the user searches for the employee "John Doe"
    And the user clicks on the "Edit" button
    And the user updates the document "Sertifikat" with file "path/to/new_certificate.pdf"
    And the user clicks the "Save" button
    Then the employee's documents should be updated successfully
    And a confirmation message "Employee documents updated successfully" should be displayed