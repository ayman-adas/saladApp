# Fruit Salad E-Commerce App

Welcome to the Fruit Salad E-Commerce App! This is a comprehensive Flutter application that allows users to explore and purchase fruit salad packets, with features including localization, Google authentication, dynamic item management, and more. The app is built with Dart and Firebase and supports an adaptive theme for a seamless user experience.

## Features

- **Localization**: The app supports multiple languages, ensuring a global reach.
- **SQLite Integration**: Local database management with SQLite for storing and retrieving data.
- **Adaptive Theme**: The app adapts to light and dark modes based on the user's system preferences.
- **Google Authentication**: Users can sign in with their Google accounts for a secure and streamlined experience.
- **Packet Simulation**: Users can add fruit salad packets to their cart and simulate a purchase.
- **Admin Account**: Admins have special privileges to manage customer statuses, add new items dynamically, and oversee app operations.
- **Network Testing**: The app includes network testing to ensure a stable connection.
- **Search Functionality**: Users can search for specific fruit salad packets or other items easily.
- **Customer Questions**: A dedicated section for customers to ask questions and receive answers.

## Getting Started

### Prerequisites

- **Flutter SDK**: [Installation Guide](https://flutter.dev/docs/get-started/install)
- **Dart SDK**: Included with the Flutter SDK.
- **Firebase Account**: Required for authentication and other backend services.

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/fruit-salad-ecommerce.git
   cd fruit-salad-ecommerce
Install dependencies:

flutter pub get
Configure Firebase:

Create a Firebase project.
Add Android and iOS apps to your Firebase project.
Download the google-services.json (for Android) and GoogleService-Info.plist (for iOS) and place them in the appropriate directories (android/app and ios/Runner).
Enable Google Authentication in Firebase Authentication.
Run the app:
flutter run
Admin Account
Admins have additional features that allow them to:

Manage Customer Status: View and update the status of customers.
Add Items Dynamically: Add new fruit salad packets or other items to the store dynamically.
Testing
To ensure the app's quality and performance, various testing methods are implemented:Localization
The app supports multiple languages. To add a new language, follow these steps:

Create a new .arb file in the lib/localization/ directory.
Add the language code to the supported locales in main.dart.
Translate the text in the new .arb file.
Adaptive Theme
The app adapts to the system's theme settings (light or dark mode). You can customize the themes in the lib/themes/ directory.

Search Functionality
Users can search for specific items using the search bar at the top of the screen. The search is performed locally using SQLite for efficiency.

Customer Questions
Customers can ask questions about products directly within the app. Admins can view and respond to these questions, providing a direct line of communication.

Contributing
We welcome contributions from the community. Please follow these steps to contribute:

Fork the repository.
Create a new branch (git checkout -b feature-branch).
Commit your changes (git commit -am 'Add new feature').
Push to the branch (git push origin feature-branch).
Create a new Pull Request.
## Download

You can download the latest APK of the Fruit Salad E-Commerce App from the link below:

[Download APK](https://www.upload-apk.com/ar/IPNcPZiZjNPvxHJ)

After downloading, you can install the app on your Android device. Make sure to enable installation from unknown sources in your device settings.
