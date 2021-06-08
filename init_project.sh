#!/bin/bash

# Get Flutter Dependencies
printf "\e[33;1m%s\e[0m\n" 'Get Flutter Dependencies...'
flutter pub get

# Setup Initial Project
printf "\e[33;1m%s\e[0m\n" 'Setup Initial Project...'

echo "Application Name: \c "
read  app_name

echo "Application Bundle Identifier (iOS & Android): \c "
read  app_bundle

echo "Generate App Icon (y/n)?: \c "
read  choice

if [ $app_name ]; then 
  echo "Application name is: $app_name"
  flutter pub run rename --appname "$app_name"
fi

if [ $app_bundle ]; then 
  echo "Application bundle indentifier is: $app_bundle"
  flutter pub run rename --bundleId $app_bundle
fi

if [ $choice = "y" ]; then 
  printf "\e[33;1m%s\e[0m\n" 'Generate App Icon...'
  flutter pub run flutter_launcher_icons:main
fi