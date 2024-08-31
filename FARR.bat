@echo off
flutter clean && flutter clean build && flutter pub outdated && flutter pub upgrade --major-versions && flutter pub run flutter_launcher_icons && flutter run -d "Redmi Note 7" --release