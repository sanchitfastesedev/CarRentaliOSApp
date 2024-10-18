//
//  UIFont+Helper.swift
//  CarRentalApp
//
//  Created by Sanchit Mehta on 19/10/24.
//

import SwiftUI

enum FontWeight: String {
    case thin = "Barlow-Thin"
    case extraLight = "Barlow-ExtraLight"
    case light = "Barlow-Light"
    case regular = "Barlow-Regular"
    case medium = "Barlow-Medium"
    case semiBold = "Barlow-SemiBold"
    case bold = "Barlow-Bold"
    case extraBold = "Barlow-ExtraBold"
    case black = "Barlow-Black"
}

extension Font {
    static func customBarlow(weight: FontWeight, size: CGFloat) -> Font {
        return .custom(weight.rawValue, size: size)
    }
}
