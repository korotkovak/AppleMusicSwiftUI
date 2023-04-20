//
//  SearchBar.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 19/04/23.
//

import SwiftUI

struct SearchBar: View {

    @Binding var selectedSide: Int
    var tab = ["Apple Music", "Ваша медиатека"]

    var body: some View {
        VStack {
            Picker("", selection: $selectedSide) {
                ForEach(0..<2) { index in
                    Text(tab[index])
                }
            }
            .pickerStyle(SegmentedPickerStyle())
        }
    }
}
