//
//  SearchAlbumAndTrack.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 19/04/23.
//

import SwiftUI

struct SearchAlbumAndTrack: View {

    @ObservedObject var viewModel = DetailSearchViewModel()
    @Binding var searchText: String
    
    let columns = [
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, alignment: .leading) {

                ForEach(
                    viewModel.detailPaylistData
                        .filter {
                            "\($0)"
                                .lowercased()
                                .contains(
                                    searchText.lowercased()
                                ) || searchText.isEmpty
                        },
                    id: \.id
                ) { model in

                    RowTrack(
                        icon: model.image,
                        title: model.title,
                        description: model.description
                    )
                }

                ForEach(
                    viewModel.detailSecondRowData
                        .filter {
                            "\($0)"
                                .lowercased()
                                .contains(
                                    searchText.lowercased()
                                ) || searchText.isEmpty
                        },
                    id: \.id
                ) { model in
                    RowAlbum(
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
