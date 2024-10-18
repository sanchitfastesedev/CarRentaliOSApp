//
//  NearByCarViewModel.swift
//  CarBookingApp
//
//  Created by Sanchit Mehta on 18/10/24.
//

import Foundation


class NearByCarViewModel: ObservableObject {
    
    @Published var selectedSegmentId: String = "information"
    
    var info = CarInfo(id: UUID().uuidString, name: "Fortuner GR", image: YralIcon.carFortuner.icon, capacity: 50, distanceTravelled: 870, carType: .diesel, rentalCostPerHour: 4500)
    
    var carOwner = CarOwner(id: UUID().uuidString, name: "Jan Cooper", worth: 4253, avatarURL: YralIcon.carOwner.icon)
    
    
    var segmentControls: [SegmentControl] = [
        SegmentControl(title: "Information", icon: YralIcon.info.icon, id: "1"),
        SegmentControl(title: "Notification", icon: YralIcon.bell.icon, id: "2")
    ]
}
