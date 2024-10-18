//
//  Coordinator.swift
//  CarRentalApp
//
//  Created by Sanchit Mehta on 18/10/24.
//

import SwiftUI


enum Destination: Hashable {
    case carDetails(info: CarInfo)
    case moreCars(cars: [CarInfo])
    case checkoutCar
}

class Coordinator: ObservableObject {
    @Published var path = NavigationPath()

    func navigate(to destination: Destination) {
        path.append(destination)
    }

    // MARK: - Types

    struct View<ContentView: SwiftUI.View>: SwiftUI.View {
        @EnvironmentObject var coordinator: Coordinator

        let contentView: ContentView

        init(contentView: @escaping () -> ContentView) {
            self.contentView = contentView()
        }

        var body: some SwiftUI.View {
            NavigationStack(path: $coordinator.path) {
                contentView
                    .navigationDestination(for: Destination.self) { destination in
                        destinationView(destination)
                    }
            }
        }

        @ViewBuilder
        func destinationView(_ destination: Destination) -> some SwiftUI.View {
            switch destination {
            case .carDetails(let info):
                CarInfoView(info: info)
            case .checkoutCar:
                Text("Checkout Car")
            case .moreCars(let cars):
                VStack {
                    CarListView(cars:cars)
                    Spacer()
                }.navigationTitle("More Cars")

            }
                           
        }
    }
}
