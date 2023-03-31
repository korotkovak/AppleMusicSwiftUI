//
//  LibraryList.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 29/03/23.
//

import SwiftUI

struct MediaList: View {

    @ObservedObject var mediaViewModel = MediaViewModel()

    var body: some View {
        List {
            ForEach(mediaViewModel.data) { mediaModel in
                MediaRow(model: mediaModel)
                    .onTapGesture {
                        withAnimation {
                            mediaViewModel.update(model: mediaModel)
                        }
                    }
            }
            .onMove(perform: mediaViewModel.move)
            .listRowSeparator(.hidden, edges: .all)
            .frame(height: 0, alignment: .trailing)
        }
        .listStyle(.inset)
    }
}

struct LibraryList_Previews: PreviewProvider {
    static var previews: some View {
        MediaList()
    }
}
