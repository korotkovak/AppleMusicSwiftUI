//
//  PlugView.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 19/04/23.
//

import SwiftUI

struct PlugView: View {

    @State var title: String
    @State var description: String?

    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
            Text(description ?? "")
                .foregroundColor(Colors.grayForText)
                .multilineTextAlignment(.center)
        }
    }
}

struct SearchMediaPlug_Previews: PreviewProvider {
    static var previews: some View {
        PlugView(title: "", description: "")
    }
}
