//
//  TimeTrackView.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 19/04/23.
//

import SwiftUI

struct TimeTrackView: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Circle()
                    .foregroundColor(Colors.black)
                    .frame(width: 8, height: 8)
                Capsule()
                    .foregroundColor(Colors.darkGrayKit)
                    .frame(height: 3)
            }
            HStack {
                Text(Constants.startTime)
                    .font(.caption)
                    .foregroundColor(Colors.grayForText)
                Spacer()
                Text(Constants.finishTime)
                    .font(.caption)
                    .foregroundColor(Colors.grayForText)
            }

        }
        .padding(.horizontal)
    }
}

fileprivate enum Constants {
    static let startTime = "0:00"
    static let finishTime = "-4:52"
}

struct TimeTrackView_Previews: PreviewProvider {
    static var previews: some View {
        TimeTrackView()
    }
}
