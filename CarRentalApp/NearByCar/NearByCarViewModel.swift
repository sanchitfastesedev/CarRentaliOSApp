//
//  NearByCarViewModel.swift
//  CarBookingApp
//
//  Created by Sanchit Mehta on 18/10/24.
//

import Foundation

struct CarAPIResponse: Decodable {
    let info: CarInfo
    let carOwner: CarOwner
    let nearbyCars: [CarInfo]
}


final class NearByCarViewModel: ObservableObject {
    
    enum Segment: String {
        case information
        case notification
    }
    
    
    @Published var selectedSegmentId: String = Segment.information.rawValue
    @Published var carAPIResponse: CarAPIResponse?
    
    
    var showInformationContent: Bool {
        return selectedSegmentId == Segment.information.rawValue
    }
    
    
    var segmentControls: [SegmentControl] = [
        SegmentControl(title: "Information", icon: YralIcon.info.icon, id: Segment.information.rawValue),
        SegmentControl(title: "Notification", icon: YralIcon.bell.icon, id: Segment.notification.rawValue)
    ]
    
    init() {
       guard let jsonData = """
                {
                  "info": {
                    "id": "\(UUID().uuidString)",
                    "name": "Fortuner GR",
                    "image": "carFortuner",
                    "capacity": 50,
                    "distanceTravelled": 870,
                    "carType": "diesel",
                    "rentalCostPerHour": 4500
                  },
                  "carOwner": {
                    "id": "\(UUID().uuidString)",
                    "name": "Jan Cooper",
                    "worth": 4253,
                    "avatarURL": "carOwner"
                  },
                  "nearbyCars": [
                    {
                      "id": "\(UUID().uuidString)",
                      "name": "Corolla Cross",
                      "image": "carFortuner",
                      "capacity": 4,
                      "distanceTravelled": 150,
                      "carType": "diesel",
                      "rentalCostPerHour": 4500
                    },
                    {
                      "id": "\(UUID().uuidString)",
                      "name": "Iconic 5",
                      "image": "carIconic",
                      "capacity": 5,
                      "distanceTravelled": 230,
                      "carType": "electric",
                      "rentalCostPerHour": 5000
                    },
                    {
                      "id": "\(UUID().uuidString)",
                      "name": "Swift",
                      "image": "carSwift",
                      "capacity": 5,
                      "distanceTravelled": 230,
                      "carType": "electric",
                      "rentalCostPerHour": 5000
                    },

                  ]
                }
                """.data(using: .utf8) else {
           return
       }
        
        let decoder = JSONDecoder()
        do {
            carAPIResponse = try decoder.decode(CarAPIResponse.self, from: jsonData)
        } catch {
            print("Error decoding JSON: \(error)")
        }
    }
}

