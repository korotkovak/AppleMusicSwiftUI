//
//  LibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 29/03/23.
//

import SwiftUI

struct MediaView: View {

    @State var editMode: EditMode = .inactive
    @State var isEditing = false

    var body: some View {
        NavigationView {
            ZStack {
                switch isEditing {
                case true:
                    MediaList()
                case false:
                    MediaPlug()
                }
            }
            .navigationTitle("Медиатека")
            .navigationBarItems(
                trailing: Button {
                    isEditing.toggle()
                    editMode = isEditing ? .active : .inactive
                } label: {
                    Text(isEditing ? "Готово" : "Править")
                        .fontWeight(.bold)
                        .foregroundColor(Color.red)
                })
            .environment(\.editMode, $editMode)
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView()
    }
}

