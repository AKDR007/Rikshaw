@echo off
flutter clean && flutter clean build && flutter pub outdated && flutter pub upgrade --major-versions && flutter run -d "V2130" --release

rem && flutter pub run flutter_launcher_icons 