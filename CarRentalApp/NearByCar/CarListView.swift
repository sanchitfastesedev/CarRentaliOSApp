//
//  CarListView.swift
//  CarRentalApp
//
//  Created by Sanchit Mehta on 18/10/24.
//

import SwiftUI

struct CarListView: View {
    
    var cars = [CarInfo]()
    
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
         VStack {
             List {
                 Section(header: SectionHeader(title: "More Cars", icon: YralIcon.more.icon, tapAction: {
                     coordinator.navigate(to: .moreCars(cars: cars))
                 })) {
                     ForEach(cars) { car in
                         HStack(alignment: .center) {
                             VStack(alignment: .leading) {
                                 CarDetailsView(carInfo: car, theme: .dark)
                                     .buttonStyle(.plain)
                                     .padding(.top, .p10)
                                 Divider()
                                     .frame(maxWidth: .infinity)
                                     .background(Color.gray)
                                     .padding(.top, .p4)
                             }
                             .padding(.horizontal, .p20)
                             .listRowInsets(EdgeInsets())
                             .background(Color.black)
                             .foregroundColor(.white)
                             Spacer()
                             tapIndicator
                                 .padding(.trailing, .p20)
                         }.onTapGesture {
                             coordinator.navigate(to: .carDetails(info: car))
                         }

                     }
                 }
                 .listRowInsets(EdgeInsets())
                 .background(Color.black)
                 .foregroundColor(.white)
             }
             .listStyle(.plain)
             .background(Color.black)
         }
         .cornerRadius(.p20)
     }

    
    private var tapIndicator: some View {
        ZStack {
            Circle()
                .fill(Color.white)
                .frame(width: .p32, height: .p32)

            Image(YralIcon.rightArrow.icon)
                .foregroundColor(.black)
        }
    }

}
    
