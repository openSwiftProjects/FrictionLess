#!/bin/sh

set -o pipefail && \
  xcodebuild clean build test \
  -project Example/FrictionLess.xcodeproj \
  -scheme FrictionLess-Example \
  -sdk iphonesimulator \
  -destination "platform=iOS Simulator,name=iPhone 6S,OS=10.3" \
  CODE_SIGNING_REQUIRED=NO \
  CODE_SIGN_IDENTITY= \
  | xcpretty