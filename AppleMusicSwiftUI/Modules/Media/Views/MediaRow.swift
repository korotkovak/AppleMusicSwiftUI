//
//  MediaRow.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 29/03/23.
//

import SwiftUI

struct MediaRow: View {

    var model: Model

    var body: some View {
        VStack(alignment: .leading, spacing: -10.0) {
            HStack {
                Image(
                    systemName: model.isSelected ?
                    "checkmark.circle.fill" : "circle"
                )
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(
                    model.isSelected ?
                    Color.red : Color.init(uiColor: UIColor.systemGray4)
                )
                .frame(width: 22, height: 22)

                Image(systemName: model.icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.red)
                    .frame(width: 22, height: 22)
                    .padding(.horizontal, 15)

                Text(model.title)
            }

            Divider()
                .offset(y: 21)
                .frame(width: UIScreen.main.bounds.width)
                .padding(.leading, 34)
        }
        .padding(.leading, 100)
    }
}

struct MediaRow_Previews: PreviewProvider {
    static var previews: some View {
        MediaRow(model: Model(icon: "music.note.list",
                              title: "Плейлисты",
                              isSelected: false))
        .padding()
    }
}