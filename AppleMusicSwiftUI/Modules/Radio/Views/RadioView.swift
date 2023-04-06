//
//  RadioView.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 05/04/23.
//

import SwiftUI

struct RadioView: View {

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 15) {
                    Divider()
                        .padding(.horizontal, 20)
                    RadioPlaylistView()
                    Divider()
                        .padding(.horizontal, 20)
                    Text(Constants.title)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.leading, 20)
                    RadioStationsView()
                }
                .padding(.bottom, 80)
            }
            .navigationTitle(Constants.navigationTitle)
        }
    }
}

fileprivate enum Constants {
    static let title = "Cтанции"
    static let navigationTitle = "Радио"
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(
            ["iPhone 14 Pro", "iPhone SE (3rd generation)"],
            id: \.self
        ) { deviceName in
            RadioView()
                .previewDevice(
                    PreviewDevice(rawValue: deviceName)
                )
                .previewDisplayName(deviceName)
        }
    }
}
