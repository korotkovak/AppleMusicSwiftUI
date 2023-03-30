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
                    .fill(Color(uiColor: Colors.gray))

                HStack(spacing: 0) {
                    Image("music_plug")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 52, height: 52)
                        .cornerRadius(5)
                        .shadow(color: Color.init(uiColor: UIColor.systemGray4), radius: 5)
                    Text("Не исполняется")
                        .lineLimit(1)
                        .padding(.horizontal, 15)
                    Spacer(minLength: 0)
                    Button {
                        //тут пока пусто
                    } label: {
                        Image(systemName: "play.fill")
                            .font(.title2)
                            .foregroundColor(Color.black)
                    }
                    Button {
                        //тут пока пусто
                    } label: {
                        Image(systemName: "forward.fill")
                            .font(.title2)
                            .foregroundColor(Color.gray)
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
