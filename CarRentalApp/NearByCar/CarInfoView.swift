//
//  CarInfoView.swift
//  CarBookingApp
//
//  Created by Sanchit Mehta on 18/10/24.
//

import SwiftUI

enum CarType {
    case electric
    case petrol
    case diesel
}

struct CarInfo: Identifiable {
    var id: String
    var name: String
    var image: String // will be a url in  actual app
    var capacity: Int
    var distanceTravelled: Int
    var carType: CarType
    var rentalCostPerHour: Float
}

struct CarInfoView: View {
    var info: CarInfo
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("NEAREST CAR")
                .kerning(6.0)
                .padding(10)
                .foregroundStyle(Color.lightGray)
            Image(info.image)
            
            HStack {
                CarDetailsView(name: info.name, distanceTravelled: info.distanceTravelled, capacity: info.capacity, theme: .light)
                Spacer()
                Text("$\(info.rentalCostPerHour)").padding()
            }
        }.background(Color.background)
            .cornerRadius(.p20)

    }
}



//#Preview {
//    CarInfoView()
//}
