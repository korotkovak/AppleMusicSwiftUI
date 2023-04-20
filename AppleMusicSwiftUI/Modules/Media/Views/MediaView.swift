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
                    PlugView(
                        title: Constants.titlePlug,
                        description: Constants.descriptionPlug
                    )
                }
            }
            .navigationTitle(Constants.title)
            .navigationBarItems(
                trailing: Button {
                    isEditing.toggle()
                    editMode = isEditing ? .active : .inactive
                } label: {
                    Text(isEditing ?
                         Constants.doneButton : Constants.editButton)
                    .fontWeight(.bold)
                    .foregroundColor(Colors.red)
                })
            .environment(\.editMode, $editMode)
            .padding(.bottom, 80)
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView()
    }
}

fileprivate enum Constants {
    static let editButton = "Править"
    static let doneButton = "Готово"
    static let title = "Медиатека"
    static let titlePlug = "Ищите свою музыку?"
    static let descriptionPlug = "Здесь появится купленная Вами в iTunes Store музыка."
}
