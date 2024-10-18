//
//  CarDetailsView.swift
//  CarRentalApp
//
//  Created by Sanchit Mehta on 18/10/24.
//

import SwiftUI

struct CarDetailsView: View {
    
    enum Theme {
        case light
        case dark
    }
    
    var carInfo: CarInfo
    var theme: Theme
    
    var textColor: Color {
        switch theme {
        case .light:
            return Color.textLightGray
        case .dark:
            return Color.white
        }
    }
    
    var subTextColor: Color {
        switch theme {
        case .light:
            return Color.lightGray
        case .dark:
            return Color.textLightGray2
        }
    }
    
    var backgroundColor: Color {
        switch theme {
        case .light:
            return Color.background
        case .dark:
            return Color.black
        }
    }
    
    var capacityImage: YralIcon {
        switch carInfo.carType {
        case .electric:
            YralIcon.battery
        default:
            YralIcon.gasPump
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: .p6) {
            Text(carInfo.name)
                .font(.customBarlow(weight: .semiBold, size: 20))
                .foregroundColor(textColor)
            
            HStack(spacing: .p10) {
                Label {
                    Text("> \(carInfo.distanceTravelled) km")
                        .font(.customBarlow(weight: .regular, size: 12))
                } icon: {
                    Image(YralIcon.direction.icon)
                        .renderingMode(.template)
                }
                
                Label {
                    Text("\(carInfo.capacity) L")
                        .font(.customBarlow(weight: .regular, size: 12))
                } icon: {
                    Image(capacityImage.icon)
                        .renderingMode(.template)
                }
            }
            .foregroundColor(subTextColor)
        }
        .background(backgroundColor)
    }
}
