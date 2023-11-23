//
//  miniPlayer.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 18/04/23.
//

import SwiftUI

struct MiniPlayer: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Image(Images.iconMusic)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 52, height: 52)
                    .cornerRadius(5)
                    .shadow(color: Colors.darkGrayKit, radius: 5)

                Text(Constants.title)
                    .fontWeight(.bold)
                    .lineLimit(1)
                    .padding(.horizontal, 15)
                Spacer(minLength: 0)
                Button {} label: {
                    Image(systemName: Images.iconPlay)
                        .font(.title2)
                        .foregroundColor(Colors.black)
                }
                Button {} label: {
                    Image(systemName: Images.iconForward)
                        .font(.title2)
                        .foregroundColor(Colors.black)
                }
                .padding(.leading, 25)
            }
            .padding([.horizontal, .leading], 20.0)
        }
    }
}

fileprivate enum Constants {
    static let title = "Улетай на крыльях ветра"
    static let description = "Евгения Сотникова"
}

fileprivate enum Images {
    static let iconMusic = "imagePlayer"
    static let iconPlay = "play.fill"
    static let iconForward = "forward.fill"
}

struct MiniPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MiniPlayer()
    }
}

