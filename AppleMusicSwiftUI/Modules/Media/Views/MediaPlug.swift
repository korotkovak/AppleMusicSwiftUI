//
//  MediaLibrary.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 29/03/23.
//

import SwiftUI

struct MediaPlug: View {
    var body: some View {
        VStack(spacing: 5) {
            Text(Constants.title)
                .font(.title2)
                .fontWeight(.bold)
            Text(Constants.description)
                .foregroundColor(Colors.grayForText)
                .multilineTextAlignment(.center)
        }
    }
}

struct MediaLibrary_Previews: PreviewProvider {
    static var previews: some View {
        MediaPlug()
    }
}

fileprivate enum Constants {
    static let title = "Ищите свою музыку?"
    static let description = "Здесь появится купленная Вами в iTunes Store музыка."
}
