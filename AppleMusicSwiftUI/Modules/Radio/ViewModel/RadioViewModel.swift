//
//  RadioViewModel.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 05/04/23.
//

import Foundation

class RadioViewModel: ObservableObject {

    @Published var radioPlaylistData = [RadioModel]()
    @Published var radioStationsData = [RadioModel]()

    init() {
        getRadioPlaylistData()
        getRadioStationsData()
    }

    func getRadioPlaylistData() {
        let newData = [
            RadioModel(
                header: "Эксклюзив",
                title: "Коллекция радиошоу Beats 1",
                description: "Новое шоу",
                image: "beats-radio"
            ),
            RadioModel(
                header: "Слушать сейчас",
                title: "Queen радио",
                description: "Nicki Minaj",
                image: "queen-radio"
            ),
            RadioModel(
                header: "Слушать сейчас",
                title: "Африканское радио с Cuppy",
                description: "Olamide наш первый гость",
                image: "africa-radio"
            ),
            RadioModel(
                header: "Избранная радиостанция",
                title: "Хип-хоп радио",
                description: "Идеальные биты и рифмы",
                image: "hip-hop-radio"
            ),
            RadioModel(
                header: "Избранная радиостанция",
                title: "Только поп музыка",
                description: "Все топ-хиты",
                image: "pop-radio"
            ),
            RadioModel(
                header: "эксклюзив",
                title: "Яркая латинская музыка",
                description: "Современные хиты",
                image: "latino-radio"
            ),
            RadioModel(
                header: "эксклюзив",
                title: "Звуковая система",
                description: "Хиты завтрашнего дня",
                image: "audiosystem-radio"
            )
        ]
        radioPlaylistData.append(contentsOf: newData)
    }

    func getRadioStationsData() {
        let newData = [
            RadioModel(
                header: nil,
                title: "Популярное",
                description: "То, что слушают сейчас.",
                image: "top-music"
            ),
            RadioModel(
                header: nil,
                title: "Музыка для расслабления",
                description: "Электронная медитация.",
                image: "relax-music"
            ),
            RadioModel(
                header: nil,
                title: "Классика",
                description: "Выдающиеся образцы жанра.",
                image: "classic-music"
            ),
            RadioModel(
                header: nil,
                title: "Танцевальная музыка",
                description: "Слушайте и танцуйте.",
                image: "dance-music"
            )
        ]
        radioStationsData.append(contentsOf: newData)
    }
}
