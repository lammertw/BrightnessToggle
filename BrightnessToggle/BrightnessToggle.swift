//
//  BrightnessToggle.swift
//  NSInternational
//
//  Created by Lammert Westerhoff on 04/02/16.
//  Copyright © 2016 Lammert Westerhoff. All rights reserved.
//

import UIKit

private var brightness: CGFloat?
public var setToMax: Bool { brightness != nil }

public var enabled = true

private func internalMaxBrightness() {
    UIScreen.main.brightness = 1
}

public func maxBrightness() {
    if enabled && !setToMax {
        brightness = UIScreen.main.brightness
        internalMaxBrightness()
    }
}

private func internalRestoreBrightness() {
    if let brightness = brightness {
        UIScreen.main.brightness = brightness
    }
}

public func restoreBrightness() {
    if enabled {
        internalRestoreBrightness()
        brightness = nil
    }
}

public func applicationWillResignActive() {
    if enabled {
        internalRestoreBrightness()
    }
}

public func applicationWillEnterForeground() {
    if enabled && setToMax {
        internalMaxBrightness()
    }
}
