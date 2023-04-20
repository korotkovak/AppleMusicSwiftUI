//
//  ExpandPlayer.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 18/04/23.
//

import SwiftUI

struct ExpandPlayer: View {

    @State var height: CGFloat
    @State var volume: CGFloat = 0
    
    var body: some View {
        VStack {
            Group {
                Capsule()
                    .fill(Colors.darkGray)
                    .frame(width: 40, height: 4)
                    .opacity(1)
                    .padding(.top, 60)

                Spacer(minLength: 20)

                Image(Images.iconMusic)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: height, height: height)
                    .cornerRadius(5)
                    .shadow(color: Colors.darkGray, radius: 5)

                Spacer(minLength: 20)

                HStack {
                    VStack(alignment: .leading) {
                        Text(Constants.title)
                            .font(.title2)
                            .fontWeight(.bold)
                            .lineLimit(1)
                        Text(Constants.description)
                            .font(.title2)
                            .fontWeight(.regular)
                            .foregroundColor(Colors.grayForText)
                            .lineLimit(1)
                    }
                    Spacer()
                    Button {} label: {
                        Image(systemName: Images.iconEllipsisCircle)
                            .foregroundColor(Colors.darkGray)
                            .font(.title)
                    }
                }
                .padding(.horizontal)
                .padding(.bottom, 20)
            }

            Group {
                TimeTrackView()
                PlaybackTrackView()

                HStack {
                    Image(systemName: Images.iconSpeaker)
                    Slider(value: $volume)
                        .tint(.red)
                    Image(systemName: Images.iconSpeakerWave)
                }
                .padding(.horizontal)

                BottomPanel()
                Spacer(minLength: 10)
            }
        }
    }
}

fileprivate enum Constants {
    static let title = "Улетай на крыльях ветра"
    static let description = "Евгения Сотникова"
}

fileprivate enum Images {
    static let iconMusic = "imagePlayer"
    static let iconEllipsisCircle = "ellipsis.circle.fill"
    static let iconSpeaker = "speaker.fill"
    static let iconSpeakerWave = "speaker.wave.2.fill"
}
