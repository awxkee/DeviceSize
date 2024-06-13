//
//  Size.swift
//  Device
//
//  Created by Lucas Ortis on 30/10/2015.
//  Copyright © 2015 Ekhoo. All rights reserved.
//

public enum Size: Comparable {
    case unknownSize(_ height: Int)
#if os(iOS)
    /// iPhone 2G, 3G, 3GS, 4, 4s, iPod Touch 4th gen.
    case screen3_5Inch
    /// iPhone 5, 5s, 5c, SE, iPod Touch 5-7th gen.
    case screen4Inch
    /// iPhone 6, 6s, 7, 8, SE 2nd gen.
    case screen4_7Inch
    /// iPhone 12 Mini
    case screen5_4Inch
    /// iPhone 6+, 6s+, 7+, 8+
    case screen5_5Inch
    /// iPhone X, Xs, 11 Pro
    case screen5_8Inch
    /// iPhone Xr, 11, 12, 12 Pro, 13, 13 Pro, 14
    case screen6_1Inch
    /// iPhone 14 Pro
    case screen6_12Inch
    /// iPhone 14 Pro Max
    case screen6_5Inch
    /// iPhone 12 Pro Max, 13 Pro Max, 14 Plus
    case screen6_7Inch
    /// iPad Mini
    case screen6_69Inch
    /// iPhone Xs Max, 11 Pro Max, iPhone 14 Pro Max
    case screen7_9Inch
    /// iPad Mini 6
    case screen8_3Inch
    /// iPad, iPad Pro (9.7-inch)
    case screen9_7Inch
    /// iPad (10.2-inch)
    case screen10_2Inch
    /// iPad Pro (10.5-inch)
    case screen10_5Inch
    /// iPad Air 4th gen.
    case screen10_9Inch
    /// iPad Pro (11-inch)
    case screen11Inch
    /// iPad Pro (12.9-inch)
    case screen12_9Inch
    /// iPad Pro (13-inch) or MacAir
    case screen13Inch
#elseif os(OSX)
    case screen11Inch
    case screen12Inch
    case screen15Inch
    case screen16Inch
    case screen17Inch
    case screen20Inch
    case screen21_5Inch
    case screen24Inch
    case screen27Inch
#endif

    public var value: Int {
        switch self {
        case .unknownSize(let i):
            return i
        case .screen3_5Inch:
            return 0
        case .screen4Inch:
            return 1
        case .screen4_7Inch:
            return 2
        case .screen5_4Inch:
            return 3
        case .screen5_5Inch:
            return 4
        case .screen5_8Inch:
            return 5
        case .screen6_1Inch:
            return 6
        case .screen6_12Inch:
            return 7
        case .screen6_69Inch:
            return 8
        case .screen6_5Inch:
            return 9
        case .screen6_7Inch:
            return 10
        case .screen7_9Inch:
            return 11
        case .screen8_3Inch:
            return 12
        case .screen9_7Inch:
            return 13
        case .screen10_2Inch:
            return 14
        case .screen10_5Inch:
            return 15
        case .screen10_9Inch:
            return 16
        case .screen11Inch:
            return 17
#if os(OSX)
        case .screen12Inch:
            return 18
#endif
        case .screen12_9Inch:
            return 19
        case .screen13Inch:
            20
#if os(OSX)
        case .screen13Inch:
            return 21
        case .screen15Inch:
            return 22
        case .screen16Inch:
            return 23
        case .screen17Inch:
            return 24
        case .screen20Inch:
            return 25
        case .screen21_5Inch:
            return 26
        case .screen24Inch:
            return 27
        case .screen27Inch:
            return 28
#endif
        }
    }
    
}

public func <(lhs: Size, rhs: Size) -> Bool {
    return lhs.value < rhs.value
}

public func ==(lhs: Size, rhs: Size) -> Bool {
    return lhs.value == rhs.value
}
