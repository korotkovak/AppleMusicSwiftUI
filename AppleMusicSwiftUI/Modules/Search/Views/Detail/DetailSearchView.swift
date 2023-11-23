//
//  DetailSearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 15/04/23.
//

import SwiftUI

struct DetailSearchView: View {

    @ObservedObject var viewModel = DetailSearchViewModel()
    @Environment(\.dismiss) private var dismiss

    private let rows = [
        GridItem(.flexible())
    ]

    var body: some View {
        VStack {
            VStack {
                HStack {
                    Text(Constants.navigationTitle)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    Spacer()
                }

                ScrollView() {
                    playlistView
                    DetailSetPlaylist(
                        titleHeader: Constants.headerTitleFirst,
                        labelButton: Constants.titleButton
                    )
                    DetailSetPlaylist(
                        titleHeader: Constants.headerTitleSecond,
                        labelButton: ""
                    )
                }
                .padding(.bottom, 10)
            }
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        HStack {
                            Image(systemName: Constants.imageChevronBackward)
                                .foregroundColor(Colors.red)
                        }
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {} label: {
                        HStack {
                            Image(systemName: Constants.imageEllipsisCircle)
                                .foregroundColor(Colors.red)
                        }
                    }
                }
            }
        }
        .padding(.bottom, 60)
    }

    private var playlistView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(viewModel.detailData) { model in
                    HorizontalPlaylistRow(
                        header: model.header,
                        title: model.title,
                        description: model.description,
                        image: model.image
                    )
                }
            }
            .padding(.leading, 20)
        }
    }
}

fileprivate enum Constants {
    static let navigationTitle = "Зимнее время"
    static let headerTitleFirst = "Подборка для тебя"
    static let titleButton = "См.все"
    static let headerTitleSecond = "Все хиты в одном месте"
    static let imageChevronBackward = "chevron.backward"
    static let imageEllipsisCircle = "ellipsis.circle.fill"
}

struct DetailSearchView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSearchView()
    }
}
