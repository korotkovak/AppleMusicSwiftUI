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
                MediaLibrary()
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
                UITabBar.appearance().backgroundColor = UIColor.systemGray6
            }
            .safeAreaInset(edge: .bottom) {
                PlayerWindow()
            }
        }
    }
}

struct TabViewAppleMusic_Previews: PreviewProvider {
    static var previews: some View {
        TabViewAppleMusic()
    }
}
