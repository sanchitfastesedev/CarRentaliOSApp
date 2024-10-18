//
//  Color+Helper.swift
//  CarRentalApp
//
//  Created by Sanchit Mehta on 18/10/24.
//

import UIKit


extension UIColor {
    static let lightGray = UIColor(hex: 0x787878)
    static let textLightGray2 = UIColor(hex: 0xD8D8D8)
    static let textLightGray = UIColor(hex: 0x2C2B34)
    static let background = UIColor(hex: 0xF3F3F3)
    static let divider = UIColor(hex: 0x4B4B4B)
}

extension UIColor {
    convenience init(hex: Int, alpha: CGFloat = 1.0) {
        let r = CGFloat((hex >> 16) & 0xff) / 255
        let g = CGFloat((hex >> 08) & 0xff) / 255
        let b = CGFloat((hex >> 00) & 0xff) / 255
        self.init(red: r, green: g, blue: b, alpha: alpha)
    }
}
