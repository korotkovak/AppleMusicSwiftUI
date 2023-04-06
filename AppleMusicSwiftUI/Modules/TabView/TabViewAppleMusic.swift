//
//  TabViewAppleMusic.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 29/03/23.
//

import SwiftUI

struct TabViewAppleMusic: View {
    var body: some View {
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
            Text(Constants.titleSearch)
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
        .safeAreaInset(edge: .bottom) {
            PlayerView()
        }
    }
}

struct TabViewAppleMusic_Previews: PreviewProvider {
    static var previews: some View {
        TabViewAppleMusic()
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
