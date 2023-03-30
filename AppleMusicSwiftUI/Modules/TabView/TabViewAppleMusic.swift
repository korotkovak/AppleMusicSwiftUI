//
//  TabViewAppleMusic.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 29/03/23.
//

import SwiftUI

struct TabViewAppleMusic: View {
    var body: some View {
        HStack {
            TabView {
                MediaView()
                    .tabItem {
                        Label("Медиатека",
                              systemImage: "play.square.stack.fill")
                    }
                Text("Радио")
                    .tabItem {
                        Label("Радио",
                              systemImage: "dot.radiowaves.left.and.right")
                    }
                Text("Поиск")
                    .tabItem {
                        Label("Поиск",
                              systemImage: "magnifyingglass")
                    }
            }
            .accentColor(Color.red)
            .onAppear() {
                UITabBar.appearance().backgroundColor = Colors.gray
            }
            .safeAreaInset(edge: .bottom) {
                PlayerView()
            }
        }
    }
}

struct TabViewAppleMusic_Previews: PreviewProvider {
    static var previews: some View {
        TabViewAppleMusic()
    }
}
