//
//  BlurView.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 18/04/23.
//

import SwiftUI

struct BlurView: UIViewRepresentable {

    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(
            effect: UIBlurEffect(style: .systemChromeMaterial))

        return view
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {

    }
}
