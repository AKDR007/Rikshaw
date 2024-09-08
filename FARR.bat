@echo off
flutter clean && flutter clean build && flutter pub outdated && flutter pub upgrade --major-versions && flutter run -d "POCO F1" --debug

rem && flutter pub run flutter_launcher_icons 