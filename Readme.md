# Meditation App – iOS Demo

A native iOS meditation app UI demo built with **UIKit** and **MVVM**, originally developed in 2019 and refreshed in 2026.

The project explores a modular approach to building interactive UIKit interfaces, with a focus on separation of concerns, dependency injection, state management and custom animations.

The visual design is based on a [Dribbble concept by Ela Kumela](https://dribbble.com/shots/3853204-Meditation-app), implemented by [Bartłomiej Guminiak](https://github.com/bartguminiak) for [EL Passion](https://www.elpassion.com).

## App Preview

| Design Inspiration | App Implementation |
|:---:|:---:|
| ![Design concept](readme_files/shot_animation.gif) | ![App demo](readme_files/app_demo.gif) |

## Features

- **Home screen** – meditation overview with relaxation and focus indicators.
- **Meditation session** – interactive song selection and session flow.
- **Dynamic playlist** – selectable tracks with animated visual states.
- **Player interface** – custom playback controls and track navigation.
- **Custom UI components** – reusable views and programmatic Auto Layout.
- **UI animations** – animated screen transitions, component appearance and layout changes.
- **State-driven presentation** – UI updates based on meditation session and track states.

> **Note:** This is a UI and interaction demo. The playlist uses mock data, and the player simulates track selection and navigation without implementing actual audio playback.

## Architecture & Engineering Practices

### MVVM

The application follows the Model-View-ViewModel pattern, separating presentation logic from view implementation.

- **Views and ViewControllers** handle UI rendering, user interaction and layout.
- **ViewModels** coordinate presentation logic and expose outputs to the views.
- **Helpers and operators** encapsulate reusable application behavior and state transitions.

### Dependency Injection

Dependencies are injected through protocol-based interfaces and assembled using a lightweight custom dependency container.

This keeps components loosely coupled and makes their implementations easier to replace or extend.

### Protocol-Oriented Design

Protocols define boundaries between ViewModels, operators and other application components.

This approach helps isolate responsibilities and avoids unnecessary dependencies on concrete implementations.

### Event Handling

The project includes a custom generic `EventEmitter<T>` implementation based on the Observer pattern.

It provides a lightweight mechanism for registering event handlers, emitting events and managing subscriptions.

### State Management

The meditation flow is driven by explicit screen states, including:

- Song selection.
- Listening / player mode.
- Session completion and dismissal.

Individual tracks also maintain their own presentation states, allowing the playlist to react to user interactions and playback navigation.

### Custom UI & Animations

The interface is built with UIKit and programmatic Auto Layout.

Reusable custom views and separated animation helpers keep presentation details independent from the main application flow.

## Technology Stack

- **Language:** Swift 4.2
- **UI Framework:** UIKit
- **Architecture:** MVVM
- **Layout:** Auto Layout
- **Dependency Injection:** Custom Container, protocol-based injection
- **Event Handling:** Custom generic EventEmitter
- **UI Updates:** UITableView with reusable cells
- **External Dependencies:** None
- **Minimum iOS Version:** 17.6

## Project Setup

### Requirements

- Xcode compatible with the project's build settings.
- iOS 17.6 or later (deployment target).

### Running the App

1. Clone the repository:

   ```bash
   git clone https://github.com/bartguminiak/meditation-ios-demo.git
   ```

2. Open `MeditationAppShowcase/MeditationAppShowcase.xcodeproj` in Xcode.

3. Select the `production` scheme.

4. Choose an iOS Simulator running iOS 17.6 or later.

5. Build and run the application.

To run the app on a physical device, configure code signing for your development team.

## Project Background

The original application was developed in **2019** as a demonstration of UIKit development and interactive UI implementation.

In **2026**, the project received a maintenance update to refresh its Xcode project configuration, adopt the scene-based application lifecycle and update the minimum iOS deployment target.

The original implementation and architectural approach have been preserved. The update was not intended as a migration to modern Swift language features or a complete architectural rewrite.

The repository serves as a demonstration of UIKit architecture, component composition, dependency management and interactive UI development.

## License

Copyright © 2019 [EL Passion](https://www.elpassion.com).

Licensed under the [GNU General Public License v3.0](LICENSE).