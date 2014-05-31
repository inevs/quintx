default: test

build:
	xcodebuild -workspace QuintX.xcworkspace -scheme QuintX clean build

test:
	xcodebuild -workspace QuintX.xcworkspace -scheme QuintX -sdk iphonesimulator test