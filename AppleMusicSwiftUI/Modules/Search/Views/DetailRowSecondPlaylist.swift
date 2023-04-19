//
//  DetailRowSecondPlaylist.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 17/04/23.
//

import SwiftUI

struct DetaiSecondlRowPlaylist: View {

    @ObservedObject var viewModel = DetailSearchViewModel()

    @State var titleHeader: String
    @State var labelButton: String

    let rows = [
        GridItem(.flexible())
    ]

    var body: some View {
        VStack {
            HStack {
                Text(titleHeader)
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                Button {
                    print("Кнопка нажата")
                } label: {
                    Text(labelButton)
                        .foregroundColor(Color.red)
                }
            }
            .padding(.leading, 20)
            .padding(.trailing, 25)

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows) {
                    ForEach(viewModel.detailSecondRowData) { model in
                        VStack {
                            HStack {
                                Image(model.image)
                                    .resizable()
                                    .frame(width: 170, height: 170)
                                    .cornerRadius(5)
                                Spacer()
                                    .frame(width: 10)
                            }
                            HStack {
                                Text(model.title)
                                Spacer()
                            }
                            HStack {
                                Text(model.description)
                                    .foregroundColor(Colors.grayForText)
                                Spacer()
                            }
                        }
                    }
                }
                .padding(.leading, 20)
                .padding(.trailing, 1)
                .padding(.bottom, 10)
            }
        }
        .padding(.top, 20)
    }
}

struct DetailRowSecondPlaylist_Previews: PreviewProvider {
    static var previews: some View {
        DetaiSecondlRowPlaylist(
            titleHeader: "Настроение - осень",
            labelButton: "См.все"
        )
    }
}
