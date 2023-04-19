//
//  DetailSearchViewModel.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 17/04/23.
//

import Foundation

class DetailSearchViewModel: ObservableObject {
    
    @Published var detailPaylistData = [DetailSearchModel]()
    @Published var detailSecondRowData = [DetailSearchModel]()
    
    init() {
        getPaylistData()
        getSecondRowData()
    }
    
    func getPaylistData() {
        let data = [
            DetailSearchModel(
                header: "Now in spatial audio",
                title: "3 Feet High and Rising",
                description: "De La Soul",
                image: "imageOne"
            ),
            DetailSearchModel(
                header: "Now in spatial audio",
                title: "Stakes Is High",
                description: "De La Soul",
                image: "imageTwo"
            ),
            DetailSearchModel(
                header: "Now in spatial audio",
                title: "Buhloone Mindstate",
                description: "De La Soul",
                image: "imageFree"
            ),
            DetailSearchModel(
                header: "Now in spatial audio",
                title: "One Thing At A Time",
                description: "De La Soul",
                image: "imageFour"
            ),
            DetailSearchModel(
                header: "Now in spatial audio",
                title: "Live At SoFi Stadium",
                description: "De La Soul",
                image: "imageFive"
            ),
            DetailSearchModel(
                header: "Now in spatial audio",
                title: "Heimdal",
                description: "De La Soul",
                image: "imageSix"
            )
        ]
        detailPaylistData.append(contentsOf: data)
    }
    
    func getSecondRowData() {
        let data = [
            DetailSearchModel(
                header: nil,
                title: "Hip-Hop",
                description: "Apple music hip-hop",
                image: "hip-hop-row"
            ),
            DetailSearchModel(
                header: nil,
                title: "Hits",
                description: "Apple music hits",
                image: "hits-row"
            ),
            DetailSearchModel(
                header: nil,
                title: "Jazz",
                description: "Apple music jazz",
                image: "jazz-row"
            ),
            DetailSearchModel(
                header: nil,
                title: "Pop",
                description: "Apple music pop",
                image: "pop-row"
            ),
            DetailSearchModel(
                header: nil,
                title: "Rock",
                description: "Apple music rock",
                image: "rock-row"
            ),
            DetailSearchModel(
                header: nil,
                title: "Spatial Audio",
                description: "Apple music spatial",
                image: "spatial-audio-row"
            )
        ]
        detailSecondRowData.append(contentsOf: data)
    }
}
