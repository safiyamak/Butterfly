# Butterfly - Autoimmune Symptom Tracker

Butterfly is a prototype iOS app developed in Swift using UIKit. The app serves as an autoimmune symptom tracker, allowing users to monitor and record their symptoms related to mind and energy levels.
## Features

- **User Authentication:**
  - The app includes a login screen where users need to input a predefined username and password to access the main features.

![Screenshot 2024-04-08 at 9 47 06 PM](https://github.com/safiyamak/Butterfly/assets/146744427/c2c2a281-38a0-402e-bb9a-c22efbb5c0ab)


- **Symptom Tracking:**
  - Users can log their symptoms related to mind and energy levels.
  - Three symptoms are provided for each category (mind and energy).
  - Severity can be selected using a segmented control.
 
Home Page

![Screenshot 2024-04-08 at 9 47 26 PM](https://github.com/safiyamak/Butterfly/assets/146744427/ad896a6d-8c9c-4df8-a256-b771ab7f0f12)

Symptom input

![Screenshot 2024-04-08 at 9 47 36 PM](https://github.com/safiyamak/Butterfly/assets/146744427/b9f67da4-6f78-4420-bca0-bc6ac0e63788)

- **Lifestyle Changes:**
  - Users can input lifestyle changes they have experienced since the last check-in.

![Screenshot 2024-04-08 at 9 47 49 PM](https://github.com/safiyamak/Butterfly/assets/146744427/daeb74f8-622e-4240-8547-327ad1984077)

- **Report Generation:**
  - The app generates a report based on the entered symptoms and lifestyle changes.
  - The report highlights the most severe symptoms in both mind and energy categories.

![Screenshot 2024-04-08 at 9 47 41 PM](https://github.com/safiyamak/Butterfly/assets/146744427/f3b5968a-c2c8-4392-a0e0-69abb07146b7)

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
