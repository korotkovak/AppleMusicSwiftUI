//
//  PlayerWindow.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 29/03/23.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(Colors.gray)

                HStack(spacing: 0) {
                    Image(Images.iconMusicPlug)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 52, height: 52)
                        .cornerRadius(5)
                        .shadow(color: Colors.darkGray, radius: 5)
                    Text(Constants.title)
                        .lineLimit(1)
                        .padding(.horizontal, 15)
                    Spacer(minLength: 0)
                    Button {
                        //тут пока пусто
                    } label: {
                        Image(systemName: Images.iconPlay)
                            .font(.title2)
                            .foregroundColor(Colors.black)
                    }
                    Button {
                        //тут пока пусто
                    } label: {
                        Image(systemName: Images.iconForward)
                            .font(.title2)
                            .foregroundColor(Colors.grayForText)
                    }
                    .padding(.leading, 25)
                }
                .padding([.horizontal, .leading], 20.0)
            }
            .frame(height: 70)
            .offset(y: -49)
        }

        Divider()
            .padding(.top, -15.0)
    }
}

struct PlayerWindow_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

fileprivate enum Constants {
    static let title = "Не исполняется"
}

fileprivate enum Images {
    static let iconMusicPlug = "music_plug"
    static let iconPlay = "play.fill"
    static let iconForward = "forward.fill"
}
