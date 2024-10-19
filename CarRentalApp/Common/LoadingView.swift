//
//  LoadingView.swift
//  CarRentalApp
//
//  Created by Sanchit Mehta on 19/10/24.
//

import SwiftUI

struct LoadingView: View {
    
    let text: String = "Loading..."
    
    var body: some View {
        VStack(spacing: .p10) {
            Spacer()
            ProgressView(text)
            Spacer()
        }
    }
}

#Preview {
    LoadingView()
}
