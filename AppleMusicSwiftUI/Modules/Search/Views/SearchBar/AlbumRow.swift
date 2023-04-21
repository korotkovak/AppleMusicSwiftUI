//
//  AlbumRow.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 19/04/23.
//

import SwiftUI

struct AlbumRow: View {

    @State var icon: String
    @State var title: String
    @State var description: String

    var body: some View {
        VStack {
            HStack(spacing: 10) {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .scaledToFill()
                    .frame(width: 70, height: 70)
                    .cornerRadius(5)
                VStack(alignment: .leading) {
                    Text(title)
                        .fontWeight(.medium)
                        .font(.system(size: 17))
                    Text(description)
                        .foregroundColor(.gray)
                        .font(.system(size: 13))
                }
                Spacer()
                Button {} label: {
                    Image(systemName: Images.iconChevron)
                        .padding(.top)
                        .padding(.trailing)
                        .foregroundColor(.gray)
                }
            }
            Divider()
        }
    }
}

fileprivate enum Images {
    static let iconChevron = "chevron.right"
}
