//
//  ErrorView.swift
//  CarRentalApp
//
//  Created by Sanchit Mehta on 19/10/24.
//

import SwiftUI

struct ErrorView: View {
    var message: String = "Something went wrong"
    
    init(message: String) {
        self.message = message
    }
    
    var body: some View {
        VStack(spacing: .p10) {
            Spacer()
            Text("Error: \(message)").foregroundColor(.red)
                .font(.customBarlow(weight: .regular, size: 14))
            Spacer()
        }
    }
}

#Preview {
    ErrorView(message: "error")
}
