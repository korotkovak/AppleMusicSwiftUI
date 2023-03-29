//
//  LibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 29/03/23.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        NavigationView {
            TabViewAppleMusic()
                .navigationBarItems(
                    trailing: Button {
                        print("Нажата кнопка")
                    } label: {
                        Text("Править")
                            .foregroundColor(Color.red)
                    }
                )
                .navigationTitle("Медиатека")
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

