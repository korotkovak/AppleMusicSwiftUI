//
//  MediaList.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 29/03/23.
//

import SwiftUI

struct MediaList: View {

    @ObservedObject var viewModel = MediaViewModel()

    var body: some View {
        List {
            ForEach(viewModel.mediaData) { model in
                MediaRow(model: model)
                    .onTapGesture {
                        withAnimation {
                            viewModel.update(model: model)
                        }
                    }
            }
            .onMove(perform: viewModel.move)
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
