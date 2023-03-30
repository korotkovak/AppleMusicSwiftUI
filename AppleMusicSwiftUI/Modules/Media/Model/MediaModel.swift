//
//  MediaModel.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 29/03/23.
//

import Foundation

struct Model: Identifiable, Hashable{
    let id: String
    var icon: String
    var title: String
    var isSelected: Bool

    init(id: String = UUID().uuidString, icon: String, title: String, isSelected: Bool) {
        self.id = id
        self.icon = icon
        self.title = title
        self.isSelected = isSelected
    }

    func updateCompletion() -> Model {
        Model(id: id,icon: icon, title: title, isSelected: !isSelected)
    }
}
