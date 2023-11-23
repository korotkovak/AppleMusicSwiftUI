//
//  SearchAlbumAndTrack.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 19/04/23.
//

import SwiftUI

struct SearchAlbumAndTrack: View, KeyboardReadable {

    @ObservedObject var viewModel = DetailSearchViewModel()
    @Binding var searchText: String
    
    let columns = [
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, alignment: .leading) {

                ForEach(
                    viewModel.detailData
                        .filter {
                            "\($0)"
                                .lowercased()
                                .contains(
                                    searchText.lowercased()
                                ) || searchText.isEmpty
                        },
                    id: \.id
                ) { model in

                    TrackRow(
                        icon: model.image,
                        title: model.title,
                        description: model.description
                    )
                }

                ForEach(
                    viewModel.detailSetPlaylistData
                        .filter {
                            "\($0)"
                                .lowercased()
                                .contains(
                                    searchText.lowercased()
                                ) || searchText.isEmpty
                        },
                    id: \.id
                ) { model in
                    AlbumRow(
                        icon: model.image,
                        title: model.title,
                        description: model.description
                    )
                }
            }
        }
        .padding(.bottom, 70)
    }
}
