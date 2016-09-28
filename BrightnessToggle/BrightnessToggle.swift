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

public var enabled = true

public func maxBrightness() {
    if enabled {
        brightness = UIScreen.main.brightness
        UIScreen.main.brightness = 1
        setToMax = true
    }
}

private func internalRestoreBrightness() {
    if enabled {
        if let brightness = brightness {
            UIScreen.main.brightness = brightness
        }
    }
}

public func restoreBrightness() {
    if enabled {
        internalRestoreBrightness()
        brightness = nil
        setToMax = false
    }
}

public func applicationWillResignActive() {
    internalRestoreBrightness()
}

public func applicationWillEnterForeground() {
    if setToMax {
        maxBrightness()
    }
}
