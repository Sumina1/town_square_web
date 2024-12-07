# TownSquare Activities App

A Flutter application for managing and joining activities in Estepona.

## Features

- Activity listing and filtering
- Activity joining system with spot management
- Category-based filtering
- Responsive layouts (mobile/web)
- Points collection system
- Activity status tracking
- Real-time activity updates

## Getting Started

### Prerequisites

- Flutter SDK (version 3.0.0 or higher)
- Dart SDK
- Android Studio / VS Code
- Git

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/sumina1/townsquare.git
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Generate required files:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. Run the app:
   ```bash
   flutter run
   ```

## Project Structure

```
lib/
├── core/
│   ├── constants/
│   ├── services/
│   └── utils/
├── features/
│   └── activities/
│       ├── data/
│       ├── domain/
│       └── presentation/
└── main.dart
```

## Architecture

The project follows Clean Architecture principles with:

### Layers
- Feature-based folder structure
- BLoC pattern for state management
- Repository pattern for data handling
- Dependency injection using get_it

### Key Dependencies
- flutter_bloc: State management
- get_it: Dependency injection
- injectable: Dependency injection
- freezed: Code generation
- dio: Network requests
- flutter_screenutil: Responsive design

## Development Setup

### Code Generation
Watch for changes and generate code:
```bash
dart run build_runner watch --delete-conflicting-outputs
```

### Running Tests
```bash
flutter test
```

## Assumptions Made

- Activities data would eventually come from an API (currently mocked)
- Users are already authenticated (auth flow not implemented)
- Category filters are fixed and not dynamic
- Activity spots are managed server-side
- Mobile and web layouts need different designs for optimal UX

## Future Improvements

### Technical Improvements
- Implement proper error handling and retry mechanisms
- Add unit and widget tests
- Implement proper state persistence
- Add proper API integration
- Add proper logging system
- Implement caching strategy

### Feature Improvements
- Add activity search functionality
- Implement activity booking flow
- Add user profile management
- Add activity details page
- Implement notifications system
- Add social sharing features
- Implement rating system

### UX Improvements
- Add loading skeletons
- Improve filter animations
- Add pull-to-refresh
- Implement infinite scroll for activities
- Add better error states and recovery options
- Improve accessibility
- Add dark mode support

## Platform Support

- iOS
- Android
- Web
- macOS
- Windows
- Linux



