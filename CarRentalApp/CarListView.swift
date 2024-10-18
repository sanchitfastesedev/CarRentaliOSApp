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
                 Section(header: sectionHeader) {
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
                         }

                     }
                 }
                 .listRowInsets(EdgeInsets())
                 .background(Color.black)
                 .foregroundColor(.white)
             }
             .listStyle(.plain)
             .background(Color.black)
             .navigationDestination(for: String.self) { car in
                 Text(car)
             }
         }
         .cornerRadius(.p20)
     }
    
    private var sectionHeader: some View {
        HStack {
            Text("More Cars")
                .foregroundColor(.white)
                .padding(.leading, .p20)

            Spacer()
            Button {
                // some action
            } label: {
                Image(YralIcon.more.icon)
                    .foregroundColor(.white)
                    .padding(.trailing, .p20)
            }

            
        }
        .padding(.vertical, .p10)
        .background(Color.black)
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
    
