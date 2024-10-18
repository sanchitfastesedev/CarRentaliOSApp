//
//  NearByCarView.swift
//  CarBookingApp
//
//  Created by Sanchit Mehta on 18/10/24.
//

import SwiftUI

struct NearByCarView: View {
    
    enum Constant {
        
    }
    
    @StateObject var viewModel = NearByCarViewModel()
    
    var body: some View {
        VStack {
            YralSegmentedControlBar(segmentItems: viewModel.segmentControls, selectedSegmentId: $viewModel.selectedSegmentId)
            CarInfoView(info: viewModel.info)
            GeometryReader { geometry in
                HStack(spacing: 0) {
                    CarOwnerView(owner: viewModel.carOwner)
                        .frame(width: (geometry.size.width - .p10) / 2)
                    CarOwnerView(owner: viewModel.carOwner)
                        .frame(width: (geometry.size.width - .p10) / 2)
                }
            }
            CarListView(cars: [CarInfo(id: UUID().uuidString, name: "Coralla Cross", image: YralIcon.carFortuner.icon, capacity: 4, distanceTravelled: 50, carType: .diesel, rentalCostPerHour: 4500), CarInfo(id: UUID().uuidString, name: "Fortuner GR", image: YralIcon.carFortuner.icon, capacity: 50, distanceTravelled: 870, carType: .diesel, rentalCostPerHour: 4500)])
            
        }.padding()
        
    }
}

#Preview {
    NearByCarView()
}
