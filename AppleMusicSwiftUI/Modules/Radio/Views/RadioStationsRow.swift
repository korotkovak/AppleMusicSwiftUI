//
//  RadioStationsRow.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 05/04/23.
//

import SwiftUI

struct RadioStationsRow: View {
    
    var model: RadioModel

    var body: some View {
        VStack {
            HStack(spacing: 20) {
                Image(model.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .cornerRadius(5)
                VStack(alignment: .leading) {
                    Text(model.title)
                        .font(.title3)
                    Text(model.description)
                        .font(.callout)
                        .foregroundColor(Colors.grayForText)
                        .lineLimit(0)
                }
                Spacer()
            }
            Divider()
        }
    }
}
