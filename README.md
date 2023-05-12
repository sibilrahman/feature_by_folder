# Package Name

Short description of your package goes here.

[![Pub Version](https://img.shields.io/pub/v/package_name.svg)](<pub package link>)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Platform](https://img.shields.io/badge/platform-flutter%20%7C%20dart-lightgrey.svg)](https://flutter.dev/)

## Features

- The package helps to create a `future by folder` folder structure template for each `feature` using the command.
- Help create `screens`, `const`, `utils`, `models`, `controllers`, and `services` directories inside the lib directory
- It helps to create directories like `const`, `models`, `controllers` and `services` in `feature` directory.
- Helps to create template files for `models`, `controllers`, and `services` inside the `feature` directory

## Getting Started

This is a package that helps you create a feature-by-folder structure for organizing code and resources in a Flutter app
Follow these steps to use the package in your Flutter project:

### 1. Depend on it

Add this to your package's `pubspec.yaml` file:

```yaml
dev_dependencies:
  feature: 
 ```

## Usage

### > Start Folder by Feature:
- Create to `screens`, `const`, `utils`, `models`, `controllers`, and `services` directories.
`flutter pub run feature start`


### > Create New Feature:
- Create to new `feature` directory.
`flutter pub run feature create <your_feature_name>`




## Project Structure

This is a package that helps you create a feature-by-folder structure for organizing code and resources in a Flutter app:

- `features`: Contains directories for each feature in the app.
  - `<feature_name>`: Replace `<feature_name>` with the actual name of your feature.
    - `constants`: Holds constants specific to the feature.
    - `utils`: Includes utility functions or classes specific to the feature.
    - `models`: Contains data models or classes related to the feature.
    - `controller`: Contains the controller or logic for the feature.
    - `services`: Includes service classes or files related to the feature.
    - `widgets`: Contains custom widgets or UI components specific to the feature.

- `screens`: Holds individual screen files for the app. You can have multiple screen files for different screens in the app.

- `constants`: Contains constants that are used throughout the app, not specific to any particular feature.

- `utils`: Includes utility functions or classes that are used throughout the app, not specific to any particular feature.

- `models`: Contains data models or classes that are used throughout the app, not specific to any particular feature.

- `controller`: Contains the main controller or logic for the entire app.

- `services`: Includes service classes or files that are used throughout the app, not specific to any particular feature.

- `widgets`: Contains custom widgets or UI components that are used throughout the app, not specific to any particular feature.

- `main.dart`: The entry point of the app.

