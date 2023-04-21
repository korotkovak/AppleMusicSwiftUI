//
//  LibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 29/03/23.
//

import SwiftUI

struct MediaView: View {
    var body: some View {
        ZStack {
//            MediaLibrary()
            MediaList()

        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        MediaView()
    }
}

