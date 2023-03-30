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
            Text("Ищите свою музыку?")
                .font(.title2)
                .fontWeight(.bold)
            Text("Здесь появится купленная Вами в iTunes Store музыка.")
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
        }
    }
}

struct MediaLibrary_Previews: PreviewProvider {
    static var previews: some View {
        MediaPlug()
    }
}
