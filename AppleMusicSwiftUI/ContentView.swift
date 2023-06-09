//
//  ContentView.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 29/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabViewAppleMusic()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(
            ["iPhone 14 Pro", "iPhone SE (3rd generation)"],
            id: \.self
        ) { deviceName in
            ContentView()
                .previewDevice(
                    PreviewDevice(rawValue: deviceName)
                )
                .previewDisplayName(deviceName)
        }
    }
}
