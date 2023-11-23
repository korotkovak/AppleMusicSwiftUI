//
//  SearchViewRepresentable.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 20/04/23.
//

import SwiftUI
import UIKit

struct SearchViewRepresentable: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> some UIViewController {
        return SearchViewController()
    }

    func updateUIViewController(
        _ uiViewController: UIViewControllerType,
        context: Context
    ) {
    }
}
