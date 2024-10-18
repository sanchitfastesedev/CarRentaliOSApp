//
//  YralIcon.swift
//  CarRentalApp
//
//  Created by Sanchit Mehta on 18/10/24.
//

import SwiftUI

enum YralIcon: String {    
    case info
    case bell
    case carFortuner // this will actually be fetched from url
    case gasPump
    case direction
    case carOwner  // this will actually be fetched from url
    case map
    case more
    case rightArrow
    case battery
    case merecedes
    
    var icon: String {
        self.rawValue
    }

}
