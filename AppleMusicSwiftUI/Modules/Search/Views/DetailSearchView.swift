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
                    Text("Зимнее время")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    Spacer()
                }

                ScrollView() {
                    playlistView
                    DetaiSecondlRowPlaylist(
                        titleHeader: "Подборка для тебя",
                        labelButton: "См.все"
                    )
                    DetaiSecondlRowPlaylist(
                        titleHeader: "Все хиты в одном месте",
                        labelButton: ""
                    )
                }
                .padding(.bottom, 20)
            }
            .offset(y: -60)
            .navigationBarBackButtonHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "chevron.backward")
                                .foregroundColor(Colors.red)
                        }
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("")
                    } label: {
                        HStack {
                            Image(systemName: "ellipsis.circle.fill")
                                .foregroundColor(Colors.red)
                        }
                    }
                }
            }
        }
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

struct DetailSearchView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSearchView()
    }
}
