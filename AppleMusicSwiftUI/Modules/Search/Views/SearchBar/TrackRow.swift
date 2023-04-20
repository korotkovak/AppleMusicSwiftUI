//
//  TrackRow.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 19/04/23.
//

import SwiftUI

struct TrackRow: View {

    @State var icon: String
    @State var title: String
    @State var description: String

    var body: some View {
        VStack {
            HStack(spacing: 10) {
                Image(icon)
                    .resizable()
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
                    Image(systemName: Images.iconArrowDownCircle)
                        .foregroundColor(.secondary)
                        .padding(.top)
                        .padding(.trailing, 5)
                }
                Button {} label: {
                    Image(systemName: Images.iconEllipsis)
                        .padding(.top)
                        .foregroundColor(.gray)
                }
            }
            Divider()
        }
    }
}

fileprivate enum Images {
    static let iconArrowDownCircle = "arrow.down.circle.fill"
    static let iconEllipsis = "ellipsis"
}
