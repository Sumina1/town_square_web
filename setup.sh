#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}Creating assets folder structure...${NC}"

# Create main assets directories
mkdir -p assets/images
mkdir -p assets/icons
mkdir -p assets/fonts
mkdir -p assets/animations
mkdir -p assets/svg

# Create image subdirectories
mkdir -p assets/images/activities
mkdir -p assets/images/backgrounds
mkdir -p assets/images/profiles
mkdir -p assets/images/logos

# Create resolution-specific directories
mkdir -p assets/images/1.0x
mkdir -p assets/images/2.0x
mkdir -p assets/images/3.0x

# Add .gitkeep files to track empty directories
touch assets/images/.gitkeep
touch assets/icons/.gitkeep
touch assets/fonts/.gitkeep
touch assets/animations/.gitkeep
touch assets/images/activities/.gitkeep
touch assets/images/backgrounds/.gitkeep
touch assets/images/profiles/.gitkeep
touch assets/images/logos/.gitkeep
touch assets/svg/.gitkeep

echo -e "${GREEN}Assets folders created successfully!${NC}"

# Development Commands
print_section "Development Commands"

print_subsection "Package Management"
echo -e "${GREEN}# Update packages${NC}"
echo "flutter pub get"

print_subsection "Code Generation"
echo -e "${GREEN}# Run build_runner once${NC}"
echo "flutter pub run build_runner build --delete-conflicting-outputs"

echo -e "${GREEN}# Watch for changes${NC}"
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

# Download sample images (you should replace these with your actual images)
curl -o assets/images/activities/placeholder.png https://via.placeholder.com/150
curl -o assets/images/backgrounds/default.png https://via.placeholder.com/1080x1920
curl -o assets/images/profiles/default.png https://via.placeholder.com/300
curl -o assets/images/logos/app_logo.png https://via.placeholder.com/512

# Download sample SVG icons (replace with your actual SVGs)
curl -o assets/svg/bell.svg https://raw.githubusercontent.com/your-repo/bell.svg
curl -o assets/svg/location.svg https://raw.githubusercontent.com/your-repo/location.svg
curl -o assets/svg/calendar.svg https://raw.githubusercontent.com/your-repo/calendar.svg
curl -o assets/svg/user.svg https://raw.githubusercontent.com/your-repo/user.svg

