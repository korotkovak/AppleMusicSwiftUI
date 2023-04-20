//
//  TabViewAppleMusic.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 29/03/23.
//

import SwiftUI

struct TabViewAppleMusic: View {

    @State private var expand = false
    @Namespace private var animation

    var body: some View {
        ZStack(alignment: Alignment(
            horizontal: .center,
            vertical: .bottom)
        ) {
            TabView {
                MediaView()
                    .tabItem {
                        Label(
                            Constants.titleMedia,
                            systemImage: Images.iconMedia
                        )
                    }
                RadioView()
                    .tabItem {
                        Label(
                            Constants.titleRadio,
                            systemImage: Images.iconRadio
                        )
                    }
                SearchView()
                    .tabItem {
                        Label(
                            Constants.titleSearch,
                            systemImage: Images.iconSearch
                        )
                    }
            }
            .accentColor(Color.red)
            .onAppear() {
                UITabBar.appearance().backgroundColor = Colors.grayTabBar
            }

            PlayerView(
                expand: $expand, animation: animation
            )
        }
    }
}

struct TabViewAppleMusic_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(
            ["iPhone 14 Pro", "iPhone SE (3rd generation)"],
            id: \.self
        ) { deviceName in
            TabViewAppleMusic()
                .previewDevice(
                    PreviewDevice(rawValue: deviceName)
                )
                .previewDisplayName(deviceName)
        }
    }
}

fileprivate enum Constants {
    static let titleMedia = "Медиатека"
    static let titleRadio = "Радио"
    static let titleSearch = "Поиск"
}

fileprivate enum Images {
    static let iconMedia = "play.square.stack.fill"
    static let iconRadio = "dot.radiowaves.left.and.right"
    static let iconSearch = "magnifyingglass"
}
