//
//  HorizontalPlaylistRow.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 05/04/23.
//

import SwiftUI

struct HorizontalPlaylistRow: View {

    @State var header: String?
    @State var title: String
    @State var description: String
    @State var image: String

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(header ?? "")
                    .font(.footnote)
                    .textCase(.uppercase)
                    .foregroundColor(Colors.grayForText)
                Spacer()
                    .frame(height: 3)
                Text(title)
                    .font(.title2)
                Spacer()
                    .frame(height: 3)
                Text(description)
                    .font(.title2)
                    .foregroundColor(Colors.grayForText)
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 350, height: 250)
                    .cornerRadius(5)
            }
            Spacer()
                .frame(width: 10)
        }
    }
}
