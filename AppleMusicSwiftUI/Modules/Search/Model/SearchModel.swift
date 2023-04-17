//
//  SearchModel.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 17/04/23.
//

import Foundation

struct SearchModel: Identifiable, Hashable {
    let id = UUID()
    let image: String
}

struct DetailSearchModel: Identifiable, Hashable {
    let id = UUID()
    let header: String?
    let title: String
    let description: String
    let image: String
}
