analyze:
	flutter analyze

build_runner:
	dart pub run build_runner build

build_runner_delete_conflicting_outputs:
	dart pub run build_runner build --delete-conflicting-outputs

build_runner_clean:
	dart pub run build_runner clean

check_outdated_dependencies:
	flutter pub outdated

clean:
	flutter clean

format:
	dart format . -l 120

run:
	flutter run --dart-define-from-file env.json

test_coverage:
	flutter test --coverage && genhtml coverage/lcov.info -o coverage/html && open coverage/html/index.html

setup:
	sh scripts/create-env-json.sh
	flutter pub get
