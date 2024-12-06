# TownSquare Activities App

A Flutter application for managing and joining activities in Estepona.

## How to Run

1. Ensure you have Flutter installed (version 3.0.0 or higher)
2. Clone the repository
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Generate required files:
   ```bash
   flutter pub run build_runner build
   ```
5. Run the app:
   ```bash
   flutter run
   ```

## Assumptions Made

- Activities data would eventually come from an API (currently mocked)
- Users are already authenticated (auth flow not implemented)
- Category filters are fixed and not dynamic
- Activity spots are managed server-side (not implemented locally)
- Mobile and web layouts need different designs for optimal UX

## Future Improvements

With more time, I would:

1. Technical Improvements:
   - Implement proper error handling and retry mechanisms
   - Add unit and widget tests
   - Implement proper state persistence
   - Add proper API integration

2. Feature Improvements:
   - Add activity search functionality
   - Implement activity booking flow
   - Add user profile management
   - Add activity details page
   - Implement notifications system

3. UX Improvements:
   - Add loading skeletons
   - Improve filter animations
   - Add pull-to-refresh
   - Implement infinite scroll for activities
   - Add better error states and recovery options

## Architecture

The project follows Clean Architecture principles with:
- Feature-based folder structure
- BLoC pattern for state management
- Repository pattern for data handling
- Dependency injection for better testability
