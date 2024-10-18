//
//  SectionHeader.swift
//  CarRentalApp
//
//  Created by Sanchit Mehta on 19/10/24.
//

import SwiftUI

struct SectionHeader: View {
    let title: String
    let icon: String
    var tapAction: (() -> Void?)? = nil
    
    
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(.white)
                .padding(.leading, .p20)
                .font(.customBarlow(weight: .regular, size: 12))

            Spacer()
            Button {
                tapAction?()
            } label: {
                Image(icon)
                    .foregroundColor(.white)
                    .padding(.trailing, .p20)
            }

            
        }
        .padding(.vertical, .p8)
        .background(Color.black)
    }
    
}

#Preview {
    SectionHeader(title: "More", icon: YralIcon.more.icon)
}
