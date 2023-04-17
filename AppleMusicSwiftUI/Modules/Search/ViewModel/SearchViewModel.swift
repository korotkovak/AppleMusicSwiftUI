//
//  SearchViewModel.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 17/04/23.
//

import Foundation

class SearchViewModel: ObservableObject {

    @Published var categoryData = [SearchModel]()

    init() {
        getCategoryData()
    }

    func getCategoryData() {
        let data = [
            SearchModel(image: "2010s"),
            SearchModel(image: "charts"),
            SearchModel(image: "classical-music"),
            SearchModel(image: "hits"),
            SearchModel(image: "indonesian-music"),
            SearchModel(image: "k-pop"),
            SearchModel(image: "pop"),
            SearchModel(image: "r&b"),
            SearchModel(image: "sing"),
            SearchModel(image: "spatial-audio")
        ]
        categoryData.append(contentsOf: data)
    }
}
