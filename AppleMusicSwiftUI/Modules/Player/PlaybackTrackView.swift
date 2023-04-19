//
//  PlaybackTrackView.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 19/04/23.
//

import SwiftUI

struct PlaybackTrackView: View {
    var body: some View {
        HStack {
            Button {} label: {
                Image(systemName: Images.iconBackward)
                    .foregroundColor(Colors.black)
                    .font(.largeTitle)
            }
            Spacer()
            Button {} label: {
                Image(systemName: Images.iconPlay)
                    .foregroundColor(Colors.black)
                    .font(.largeTitle)
            }
            Spacer()
            Button {} label: {
                Image(systemName: Images.iconForward)
                    .foregroundColor(Colors.black)
                    .font(.largeTitle)
            }
        }
        .padding(.horizontal, 60)
        .padding(.top, 40)
        .padding(.bottom, 50)
    }
}


fileprivate enum Images {
    static let iconPlay = "play.fill"
    static let iconForward = "forward.fill"
    static let iconBackward = "backward.fill"
}

struct PlaybackTrackView_Previews: PreviewProvider {
    static var previews: some View {
        PlaybackTrackView()
    }
}
