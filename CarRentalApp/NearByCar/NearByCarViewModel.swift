//
//  NearByCarViewModel.swift
//  CarRentalApp
//
//  Created by Sanchit Mehta on 18/10/24.
//

import Foundation

struct CarAPIResponse: Decodable {
    let info: CarInfo
    let carOwner: CarOwner
    let moreCars: [CarInfo]
}

enum ViewState {
    case loading
    case success(CarAPIResponse)
    case error(String)
}


final class NearByCarViewModel: ObservableObject {
    
    enum Segment: String {
        case information
        case notification
    }
    
    
    @Published var selectedSegmentId: String = Segment.information.rawValue
    @Published var state: ViewState = .loading
    
    
    var showInformationContent: Bool {
        return selectedSegmentId == Segment.information.rawValue
    }
    
    
    var segmentControls: [SegmentControl] = [
        SegmentControl(title: "Information", icon: YralIcon.info.icon, id: Segment.information.rawValue),
        SegmentControl(title: "Notification", icon: YralIcon.bell.icon, id: Segment.notification.rawValue)
    ]
    
    func fetchData() {
        state = .loading
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { // Simulating 2 seconds delay for API Call
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
                     "moreCars": [
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
                       {
                         "id": "\(UUID().uuidString)",
                         "name": "Mercedes",
                         "image": "mercedes",
                         "capacity": 5,
                         "distanceTravelled": 230,
                         "carType": "diesel",
                         "rentalCostPerHour": 5000
                       }
                     ]
                   }
                   """.data(using: .utf8) else {
                       self.state = .error("Failed to load data.")
                       return
                   }

                   let decoder = JSONDecoder()
                   do {
                       let response = try decoder.decode(CarAPIResponse.self, from: jsonData)
                       self.state = .success(response)
                   } catch {
                       self.state = .error("Error decoding JSON: \(error)")
                   }
               }
    }
}

