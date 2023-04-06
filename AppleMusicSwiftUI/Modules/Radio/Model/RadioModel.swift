//
//  RadioModel.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 05/04/23.
//

import Foundation

struct RadioModel: Identifiable, Hashable {
    let id = UUID()
    let header: String?
    let title: String
    let description: String
    let image: String
}
