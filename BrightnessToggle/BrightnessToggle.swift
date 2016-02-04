//
//  BrightnessToggle.swift
//  NSInternational
//
//  Created by Lammert Westerhoff on 04/02/16.
//  Copyright © 2016 Lammert Westerhoff. All rights reserved.
//

import Foundation

private var brightness: CGFloat?
private var setToMax = false

public func maxBrightness() {
    brightness = UIScreen.mainScreen().brightness
    UIScreen.mainScreen().brightness = 1
    setToMax = true
}

private func internalRestoreBrightness() {
    if let brightness = brightness {
        UIScreen.mainScreen().brightness = brightness
    }
}

public func restoreBrightness() {
    internalRestoreBrightness()
    brightness = nil
    setToMax = false
}

public func applicationWillResignActive() {
    internalRestoreBrightness()
}

public func applicationWillEnterForeground() {
    if setToMax {
        maxBrightness()
    }
}
