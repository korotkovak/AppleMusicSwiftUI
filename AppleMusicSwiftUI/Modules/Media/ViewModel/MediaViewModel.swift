//
//  ViewModel.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 30/03/23.
//

import Foundation

class MediaViewModel: ObservableObject {

    @Published var data = [Model]()

    init() {
        getMedia()
    }

    func getMedia() {
        let newData = [
            Model(
                icon: "music.note.list",
                title: "Плейлисты",
                isSelected: false
            ),
            Model(
                icon: "music.mic",
                title: "Артисты",
                isSelected: false
            ),
            Model(
                icon: "rectangle.stack",
                title: "Альбомы",
                isSelected: false
            ),
            Model(
                icon: "music.note",
                title: "Песни",
                isSelected: false
            ),
            Model(
                icon: "tv",
                title: "Телешоу и фильмы",
                isSelected: false
            ),
            Model(
                icon: "music.note.tv",
                title: "Видеоклипы",
                isSelected: false
            ),
            Model(
                icon: "guitars",
                title: "Жанры",
                isSelected: false
            ),
            Model(
                icon: "person.2.crop.square.stack",
                title: "Сборники",
                isSelected: false
            ),
            Model(
                icon: "music.quarternote.3",
                title: "Авторы",
                isSelected: false
            ),
            Model(
                icon: "arrow.down.circle",
                title: "Загружено",
                isSelected: false
            ),
            Model(
                icon: "house",
                title: "Коллекция",
                isSelected: false
            )
        ]
        data.append(contentsOf: newData)
    }

    func move(from source: IndexSet, to destination: Int) {
        data.move(fromOffsets: source, toOffset: destination)
    }

    func update(model: Model) {
        if let index = data.firstIndex(where: { $0.id == model.id }) {
            data[index] = model.updateCompletion()
        }
    }
}
