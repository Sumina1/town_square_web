#!/bin/bash

echo "flutter pub get"

print_subsection "Code Generation"

echo "flutter pub run build_runner build --delete-conflicting-outputs"
echo "dart run build_runner watch --delete-conflicting-outputs"

# Build Commands
print_section "Build Commands"
echo -e "${GREEN}# Build APK without shrinking${NC}"
echo "flutter build apk --no-shrink"

echo -e "${GREEN}# Clean and get packages${NC}"
echo "flutter clean && flutter pub get"



## Package Management
flutter pub get

## Code Generation
flutter pub run build_runner build --delete-conflicting-outputs
dart run build_runner watch --delete-conflicting-outputs

## Build Commands
flutter build apk --no-shrink
flutter clean && flutter pub get



