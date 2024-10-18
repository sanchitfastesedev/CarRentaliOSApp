//
//  CarOwnerView.swift
//  CarRentalApp
//
//  Created by Sanchit Mehta on 18/10/24.
//

import SwiftUI

struct CarOwner: Decodable {
    let id: String
    let name: String
    let worth: Int
    let avatarURL: String // will be url in actual case
}

struct CarOwnerView: View {
    
    var owner: CarOwner
    
    var body: some View {
        VStack(spacing: 0) {
            // will be fetched from url in actual case
            Image(owner.avatarURL)
                .resizable()
                .frame(width: 70, height: 70)
                .padding(.top,.p26)
            Text(owner.name)
                .padding(.top, .p8)
                .font(.customBarlow(weight: .medium, size: 16))
            Text("$\(owner.worth)")
                .padding(.top, .p2)
                .padding(.bottom, .p10)
                .font(.customBarlow(weight: .bold, size: 14))
        }
        .cornerRadius(.p20)
    }
}
