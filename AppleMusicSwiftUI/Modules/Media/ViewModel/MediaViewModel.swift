//
//  ViewModel.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 30/03/23.
//

import Foundation

class MediaViewModel: ObservableObject {

    @Published var mediaModelArray = [MediaModel]()

    init() {
        getData()
    }

    func getData() {
        let newData = [
            MediaModel(
                icon: "music.note.list",
                title: "Плейлисты",
                isSelected: false
            ),
            MediaModel(
                icon: "music.mic",
                title: "Артисты",
                isSelected: false
            ),
            MediaModel(
                icon: "rectangle.stack",
                title: "Альбомы",
                isSelected: false
            ),
            MediaModel(
                icon: "music.note",
                title: "Песни",
                isSelected: false
            ),
            MediaModel(
                icon: "tv",
                title: "Телешоу и фильмы",
                isSelected: false
            ),
            MediaModel(
                icon: "music.note.tv",
                title: "Видеоклипы",
                isSelected: false
            ),
            MediaModel(
                icon: "guitars",
                title: "Жанры",
                isSelected: false
            ),
            MediaModel(
                icon: "person.2.crop.square.stack",
                title: "Сборники",
                isSelected: false
            ),
            MediaModel(
                icon: "music.quarternote.3",
                title: "Авторы",
                isSelected: false
            ),
            MediaModel(
                icon: "arrow.down.circle",
                title: "Загружено",
                isSelected: false
            ),
            MediaModel(
                icon: "house",
                title: "Коллекция",
                isSelected: false
            )
        ]
        mediaModelArray.append(contentsOf: newData)
    }

    func move(from source: IndexSet, to destination: Int) {
        mediaModelArray.move(fromOffsets: source, toOffset: destination)
    }

    func update(model: MediaModel) {
        if let index = mediaModelArray.firstIndex(where: { $0.id == model.id }) {
            mediaModelArray[index] = model.updateCompletion()
        }
    }
}
