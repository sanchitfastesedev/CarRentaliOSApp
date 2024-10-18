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
    
    var name: String
    var distanceTravelled: Int
    var capacity: Int
    var theme: Theme
    
    var textColor: Color {
        switch theme {
        case .light:
            return Color.textLightGray
        case .dark:
            return Color.white
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
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(name)
                .font(.system(size: 20, weight: .bold))
                .padding(8)
                .foregroundColor(textColor)
            
            HStack(spacing: 10) {
                
                Label {
                    Text("\(distanceTravelled) km")
                        .foregroundColor(.gray)
                } icon: {
                    Image(YralIcon.direction.icon)
                }
                
                Label {
                    Text("\(capacity) L")
                        .foregroundColor(.gray)
                } icon: {
                    Image(YralIcon.gasPump.icon)
                }
            }
            .padding([.bottom, .leading], 10)
        }
        .background(backgroundColor)
    }
}
