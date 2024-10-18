//
//  YralSegmentBar.swift
//  CarBookingApp
//
//  Created by Sanchit Mehta on 18/10/24.
//

import SwiftUI

struct SegmentControl: Identifiable {
    var title: String
    var icon: String
    var id: String
    
}

struct YralSegmentedControlBar: View {
    var segmentItems = [SegmentControl]()
    @Binding var selectedSegmentId: String
    
    var body: some View {
        HStack(spacing: .p20) {
            ForEach(segmentItems) { item in
                Button {
                    selectedSegmentId = item.id
                } label: {
                    HStack {
                        Text(item.title)
                            .foregroundStyle(.black)
                        Image(item.icon)
                    }
                }
            }
        }
    }
}

