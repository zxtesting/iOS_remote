#!/usr/bin/env bash

set -exo pipefail

UDID=$(system_profiler SPUSBDataType | sed -n -E -e '/(iPhone|iPad)/,/Serial/s/ *Serial Number: *(.+)/\1/p')
xcodebuild -project /Users/ctt/Downloads/appium-xcuitest-driver/WebDriverAgent/WebDriverAgent.xcodeproj -scheme WebDriverAgentRunner -destination "id=${UDID}" test