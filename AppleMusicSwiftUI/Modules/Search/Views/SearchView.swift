//
//  SearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 15/04/23.
//

import SwiftUI

struct SearchView: View {

    @State var text = ""

    let columns = [
        GridItem(.flexible(), spacing: 14),
        GridItem(.flexible(), spacing: 14)
    ]

    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Ваша Медиатека", text: $text)
                    .padding(10)
                    .padding(.horizontal, 30)
                    .background(Colors.gray)
                    .font(.title3)
                    .cornerRadius(10)
                    .padding(.horizontal, 18)
                    .overlay {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Colors.grayForText)
                                .frame(
                                    minWidth: 20,
                                    maxWidth: .infinity,
                                    alignment: .leading
                                )
                                .padding(.leading, 34)
                        }
                    }

                ScrollView(showsIndicators: false) {
                    LazyVGrid(
                        columns: columns,
                        alignment: .leading,
                        spacing: 14
                    ) {
                        Section(
                            header: Text("Поиск по категориям")
                                .font(.title2)
                                .fontWeight(.bold)
                        ) {
                            ForEach(0..<10) { index in
                                ZStack {
                                    Rectangle()
                                        .frame(height: 130)
                                        .cornerRadius(10)
                                    VStack {
                                        Spacer()
                                        Text("Зимнее время")
                                            .foregroundColor(.white)
                                            .fontWeight(.bold)
                                            .padding(.leading, -10)
                                            .padding(.bottom, 20)
                                    }
                                }
                            }
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Поиск")
            .padding(.bottom, 80)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
