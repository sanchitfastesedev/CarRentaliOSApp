//
//  NearByCarView.swift
//  CarRentalApp
//
//  Created by Sanchit Mehta on 18/10/24.
//

import SwiftUI

struct NearByCarView: View {
    
    enum Constant {
        static let ownerCardHeight: CGFloat = 170
    }
    
    @StateObject var viewModel = NearByCarViewModel()
    @StateObject var coordinator = Coordinator()
    
    var body: some View {
        navigationStack
            .environmentObject(coordinator)
    }
    
    var navigationStack: some View {
        Coordinator.View {
            contentView
        }
    }
    
    private var contentView: some View {
        VStack(spacing: .p10) {
            YralSegmentedControlBar(segmentItems: viewModel.segmentControls, selectedSegmentId: $viewModel.selectedSegmentId)
            if (viewModel.showInformationContent) {
                informationContent
            } else {
                notificationContent
            }
        }.padding()
        
    }
    
    private var notificationContent: some View {
        VStack(spacing: .p10) {
            Spacer()
            Text("We dont have any Notifications yet")
            Spacer()
        }
    }
    
    @ViewBuilder
    private var informationContent: some View {
        guard let data = viewModel.carAPIResponse else { return Color.clear }
        return VStack(spacing: .p10) {
            CarInfoView(info: data.info)
            carOwnerAndMapGrid(owner: data.carOwner)
            CarListView(cars: data.moreCars)
        }
    }
    
    @ViewBuilder
    private func carOwnerAndMapGrid(owner: CarOwner) -> some View {
        GeometryReader { geometry in
            HStack(spacing: .p10) {
                CarOwnerView(owner: owner)
                    .frame(width: (geometry.size.width - .p10) / 2, height: geometry.size.height)
                    .background(Color.background)
                    .cornerRadius(.p20)
                Image(YralIcon.map.icon)
                    .resizable()
                    .frame(width: (geometry.size.width - .p10) / 2, height: geometry.size.height)
                    .cornerRadius(.p20)
                    .scaledToFit()
            }
            .frame(height: geometry.size.height)
        }
        .frame(height: Constant.ownerCardHeight)
    }
    

}

#Preview {
    NearByCarView()
}
