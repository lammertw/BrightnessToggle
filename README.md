# BrightnessToggle
BrightnessToggle lets you toggle between maximum screen brightness and back on iOS.

## Features

- [x] Toggle to maximum screen brightness and back
- [x] Restore original brightness when app goes to background

## Requirements

- Swift 2.0
- iOS 8.0+ / Mac OS X 10.9+ / tvOS 9.0+ / watchOS 2.0+
- Xcode 7.2+

## Installation

> **Embedded frameworks require a minimum deployment target of iOS 8 or OS X Mavericks (10.9).**

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate BrightnessToggle into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

pod 'BrightnessToggle'
```

Then, run the following command:

```bash
$ pod install
```

## Usage

### Setting the screen to maximum brightness

```swift
import BrightnessToggle

BrightnessToggle.maxBrightness()
```

### Restoring the previous screen brightness


```swift
BrightnessToggle.restoreBrightness()
```

### App state changes

Include the following code in your `AppDelegate` to automatically restore brightness when the user leaves the app and set it again to maximum brightness when the app becomes active again (if it was at a maximum when the app became inactive):

```swift
    func applicationWillResignActive(application: UIApplication) {
        BrightnessToggle.applicationWillResignActive()
    }

    func applicationWillEnterForeground(application: UIApplication) {
        BrightnessToggle.applicationWillEnterForeground()
    }
```

## License

BrightnessToggle is released under the MIT license. See LICENSE for details.
