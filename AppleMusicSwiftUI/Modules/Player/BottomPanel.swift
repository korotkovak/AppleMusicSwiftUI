//
//  BottomPanel.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 19/04/23.
//

import SwiftUI

struct BottomPanel: View {
    var body: some View {
        HStack {
            Button {} label: {
                Image(systemName: Images.iconQuoteBubble)
                    .foregroundColor(Colors.black)
                    .font(.title2)
            }

            Spacer()

            Button {} label: {
                Image(systemName: Images.iconAirpods)
                    .foregroundColor(Colors.black)
                    .font(.title2)
            }

            Spacer()

            Button {} label: {
                Image(systemName: Images.iconShuffle)
                    .foregroundColor(Colors.black)
                    .font(.title2)
            }
        }
        .padding(.horizontal, 80)
        .padding(.top, 20)
    }
}

fileprivate enum Images {
    static let iconQuoteBubble = "quote.bubble"
    static let iconAirpods = "airpods"
    static let iconShuffle = "shuffle"
}


struct BottomPanel_Previews: PreviewProvider {
    static var previews: some View {
        BottomPanel()
    }
}
