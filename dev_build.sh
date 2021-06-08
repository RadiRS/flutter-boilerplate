#!/bin/bash
printf "\e[33;1m%s\e[0m\n" 'Running the Gradlew Clean'
cd android
./gradlew clean
cd ..
printf "\e[33;1m%s\e[0m\n" 'Running the Flutter Clean'
flutter clean
printf "\e[33;1m%s\e[0m\n" 'Running the Flutter Build .apk Android with Obfuscation'
flutter build apk --obfuscate --split-debug-info=build/app/outputs/symbol