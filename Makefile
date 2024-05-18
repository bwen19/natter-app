
splash:
	dart run flutter_native_splash:create

freezed:
	dart run build_runner build

apk:
	flutter build apk --release

install:
	flutter install app-arm64-v8a-release

.PHONY: splash freezed apk install