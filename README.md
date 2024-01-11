
<div style="text-align:center"><img src="[Logo Milestone 2](https://github.com/safiyamak/Butterfly/assets/146744427/37df7d56-1bff-4f09-9648-908cf192496b)" /></div>
# Butterf!ly - Autoimmune Symptom Tracker

Butterfly is a prototype iOS app developed in Swift using UIKit. The app serves as an autoimmune symptom tracker, allowing users to monitor and record their symptoms related to mind and energy levels.

## Features

- **User Authentication:**
  - The app includes a login screen where users need to input a predefined username and password to access the main features.

- **Symptom Tracking:**
  - Users can log their symptoms related to mind and energy levels.
  - Three symptoms are provided for each category (mind and energy).
  - Severity can be selected using a segmented control.

- **Lifestyle Changes:**
  - Users can input lifestyle changes they have experienced since the last check-in.

- **Report Generation:**
  - The app generates a report based on the entered symptoms and lifestyle changes.
  - The report highlights the most severe symptoms in both mind and energy categories.

## App Structure

### AppDelegate.swift
- Initialization and configuration of the app.

### CheckinViewController.swift
- Main screen for symptom tracking.
- Allows users to select symptoms and their severity.
- Provides a menu to switch between mind and energy categories.
- Includes functionality to submit and navigate to the home screen.

### TestViewController.swift
- Login screen with text fields for username and password.
- Includes hardcoded correct username and password.
- Navigates to the home screen if login is successful.

### ReportViewController.swift
- Generates a report based on the entered symptoms and lifestyle changes.
- Displays the most severe symptoms in both mind and energy categories.
- Allows users to submit and reset their data.

## How to Use

1. **Login:**
   - Open the app and enter the predefined username and password.

2. **Check-in:**
   - Use the Check-in screen to log symptoms for both mind and energy categories.
   - Select severity using the segmented control.
   - Input lifestyle changes in the text view.

3. **Generate Report:**
   - Navigate to the Report screen to view a summary of entered symptoms.
   - The report highlights the most severe symptoms in both categories.

4. **Reset Data:**
   - After generating a report, users can submit and reset their data for a new check-in.

## Requirements

- iOS 14.0+
- Xcode 12.0+
- Swift 5.3+

## Contributors

- Safiya - Developer

## License

This project is licensed under the [MIT License](LICENSE.md).
