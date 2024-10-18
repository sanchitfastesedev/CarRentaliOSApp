//
//  CarListView.swift
//  CarRentalApp
//
//  Created by Sanchit Mehta on 18/10/24.
//

import SwiftUI

struct CarListView: View {
    
    var cars = [CarInfo]()
    
    var body: some View {
        VStack {
            List {
                ForEach(cars) { car in
                    VStack {
                        CarDetailsView(name: car.name, distanceTravelled: car.distanceTravelled, capacity: car.capacity, theme: .dark)
                            .buttonStyle(.plain)
                        Divider()
                            .background(Color.gray)
                            .padding([.leading, .trailing], 8)
                    }
                    .listRowInsets(EdgeInsets())
                    .background(Color.black)
                    .foregroundColor(.white)
                }
            }
            .listStyle(.plain)
            .background(Color.black)
            .navigationDestination(for: String.self) { car in
                Text(car)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(8)
                    .foregroundColor(.white)
            }
            
        }
        
    }
}
    
