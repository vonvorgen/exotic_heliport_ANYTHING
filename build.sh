#!/usr/bin/env sh

echo "To set up CocoaPods for ARM macOS, run:"
echo "arch -x86_64 sudo gem install ffi"

flutter || {
  echo "Flutter was not found in the path. Please install flutter and setup the ENV path to include the flutter bin"
  echo "https://flutter.dev/docs/get-started/install/macos"
}

flutter channel stable
flutter pub get
dart migrate --apply-changes
flutter pub run build_runner build --delete-conflicting-outputs

echo "Project is ready to run".
flutter run --no-sound-null-safety