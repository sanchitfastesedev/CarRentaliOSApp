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
                .font(.system(size: .p20, weight: .bold))
                .foregroundColor(textColor)
            
            HStack(spacing: .p10) {
                Label {
                    Text("\(carInfo.distanceTravelled) km")
                } icon: {
                    Image(YralIcon.direction.icon)
                        .renderingMode(.template)
                }
                
                Label {
                    Text("\(carInfo.capacity) L")
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
