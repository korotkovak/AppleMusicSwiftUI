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

    let rows = [
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
                    DetaiSecondlRowPlaylist(
                        titleHeader: Constants.headerTitleFirst,
                        labelButton: Constants.titleButton
                    )
                    DetaiSecondlRowPlaylist(
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
                    Button {
                        print("tupped navigationBarTrailing")
                    } label: {
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

    var playlistView: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(viewModel.detailPaylistData) { model in
                    VStack(alignment: .leading) {
                        Text(model.header ?? "")
                            .font(.footnote)
                            .textCase(.uppercase)
                            .foregroundColor(Colors.grayForText)
                        Spacer()
                            .frame(height: 3)
                        Text(model.title)
                            .font(.title2)
                        Spacer()
                            .frame(height: 3)
                        Text(model.description)
                            .font(.title2)
                            .foregroundColor(Colors.grayForText)
                        Image(model.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 350, height: 250)
                            .cornerRadius(5)
                    }
                    Spacer()
                        .frame(width: 10)
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
