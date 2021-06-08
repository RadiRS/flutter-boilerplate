#!/bin/bash

# Get Flutter Dependencies
printf "\e[33;1m%s\e[0m\n" 'Get Flutter Dependencies'
# flutter pub get

# Setup Initial Project
printf "\e[33;1m%s\e[0m\n" 'Setup Initial Project'

echo "Application Name: \c "
read  app_name
echo "Application name is: $app_name"

echo "Application Bundle Identifier (iOS & Android): \c "
read  app_bundle
echo "Application bundle indentifier is: $app_bundle"

