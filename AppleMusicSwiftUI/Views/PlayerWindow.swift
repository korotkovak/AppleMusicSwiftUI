//
//  PlayerWindow.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 29/03/23.
//

import SwiftUI

struct PlayerWindow: View {
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(Color(uiColor: UIColor.systemGray6))
                HStack(spacing: 0) {
                    Image("queen")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .shadow(radius: 7)
                        .cornerRadius(4)
                    Text("Queen")
                        .lineLimit(1)
                        .padding(.horizontal, 15)
                    Spacer(minLength: 0)
                    Button {

                    } label: {
                        Image(systemName: "pause.fill")
                            .font(.title2)
                            .foregroundColor(Color.black)
                    }
                    Button {

                    } label: {
                        Image(systemName: "forward.fill")
                            .font(.title2)
                            .foregroundColor(Color.black)
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
        PlayerWindow()
    }
}
