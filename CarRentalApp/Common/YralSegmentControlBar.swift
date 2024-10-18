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
        HStack {
            ForEach(segmentItems) { item in
                Button {
                    selectedSegmentId = item.id
                } label: {
                    HStack {
                        Text(item.title)
                        Image(item.icon)
                    }
                }
            }
        }
    }
}

