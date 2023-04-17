//
//  DetailSearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 15/04/23.
//

import SwiftUI

struct DetailSearchView: View {

    @ObservedObject var radioViewModel = RadioViewModel()
    @Environment(\.dismiss) private var dismiss

    let rows = [
        GridItem(.flexible())
    ]

    let rowsPlaylists = [
        GridItem(.flexible())
    ]

    var body: some View {
        VStack() {
            VStack {
                HStack {
                    Text("Зимнее время")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding()
                    Spacer()
                }

                ScrollView() {
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: rows) {
                            ForEach(radioViewModel.radioPlaylistData) { radioModel in
                                VStack(alignment: .leading) {
                                    Text(radioModel.header ?? "")
                                        .font(.footnote)
                                        .textCase(.uppercase)
                                        .foregroundColor(Colors.grayForText)
                                    Spacer()
                                        .frame(height: 3)
                                    Text(radioModel.title)
                                        .font(.title2)
                                    Spacer()
                                        .frame(height: 3)
                                    Text(radioModel.description)
                                        .font(.title2)
                                        .foregroundColor(Colors.grayForText)
                                    Image(radioModel.image)
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

                    VStack {
                        HStack {
                            Text("Настроение - осень")
                                .font(.title2)
                                .fontWeight(.bold)
                            Spacer()
                            Button {
                                print("Кнопка нажата")
                            } label: {
                                Text("См.все")
                                    .foregroundColor(Color.red)
                            }
                        }
                        .padding(.leading, 20)
                        .padding(.trailing, 25)

                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: rowsPlaylists) {
                                ForEach(0..<10) { index in
                                    Rectangle()
                                        .frame(width: 170, height: 170)
                                        .cornerRadius(5)
                                    Spacer()
                                        .frame(width: 10)
                                }
                            }
                            .padding(.leading, 20)
                            .padding(.trailing, 1)
                        }
                    }
                    .padding(.top, 20)

                    VStack {
                        HStack {
                            Text("Настроение - осень")
                                .font(.title2)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .padding(.leading, 20)
                        .padding(.trailing, 25)

                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHGrid(rows: rowsPlaylists) {
                                ForEach(0..<10) { index in
                                    Rectangle()
                                        .frame(width: 170, height: 170)
                                        .cornerRadius(5)
                                    Spacer()
                                        .frame(width: 10)
                                }
                            }
                            .padding(.leading, 20)
                            .padding(.trailing, 1)
                        }
                    }
                    .padding(.top, 20)
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
}

struct DetailSearchView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSearchView()
    }
}
