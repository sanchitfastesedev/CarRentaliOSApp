//
//  CarInfoView.swift
//  CarRentalApp
//
//  Created by Sanchit Mehta on 18/10/24.
//

import SwiftUI

enum CarType: String, Decodable {
    case electric
    case petrol
    case diesel
}

struct CarInfo: Identifiable, Decodable, Hashable {
    var id: String
    var name: String
    var image: String // will be a url in  actual app
    var capacity: Int
    var distanceTravelled: Int
    var carType: CarType
    var rentalCostPerHour: Int
}

struct CarInfoView: View {
    var info: CarInfo
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("NEAREST CAR")
                .kerning(4.0)
                .font(.customBarlow(weight: .regular, size: 12))
                .padding([.top, .leading],
                         .p20)
                .foregroundStyle(Color.lightGray)
            Image(info.image)
            
            HStack(alignment: .bottom) {
                CarDetailsView(carInfo: info, theme: .light)
                    .padding(.leading, .p20)
                Spacer()
                Text("$\(info.rentalCostPerHour)/h")
                    .padding()
                    .font(.customBarlow(weight: .semiBold, size: 1))
            }
            .padding(.bottom, .p10)
        }.background(Color.background)
            .cornerRadius(.p20)

    }
}



//#Preview {
//    CarInfoView()
//}
