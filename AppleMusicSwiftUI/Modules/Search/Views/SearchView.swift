//
//  SearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 15/04/23.
//

import SwiftUI

struct SearchView: View {

    @ObservedObject var viewModel = SearchViewModel()
    @State var text = ""

    let columns = [
        GridItem(.flexible(), spacing: 14),
        GridItem(.flexible(), spacing: 14)
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                textField
                category
            }
            .navigationTitle(Constants.navigationTitle)
        }
    }

    var textField: some View {
        TextField(Constants.placeholderTextField, text: $text)
            .padding(10)
            .padding(.horizontal, 30)
            .background(Colors.gray)
            .font(.title3)
            .cornerRadius(10)
            .padding(.horizontal, 18)
            .overlay {
                HStack {
                    Image(systemName: Constants.imageSearch)
                        .foregroundColor(Colors.grayForText)
                        .frame(
                            minWidth: 20,
                            maxWidth: .infinity,
                            alignment: .leading
                        )
                        .padding(.leading, 34)
                }
            }
    }

    var category: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(
                columns: columns,
                alignment: .leading,
                spacing: 14
            ) {
                Section(
                    header: Text(Constants.sectionHeader)
                        .font(.title2)
                        .fontWeight(.bold)
                ) {
                    ForEach(viewModel.categoryData) { model in
                        ZStack {
                            NavigationLink {
                                DetailSearchView()
                            } label: {
                                Image(model.image)
                                    .resizable()
                                    .frame(height: 130)
                                    .cornerRadius(10)
                                    .foregroundColor(Color.black)
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }
}

fileprivate enum Constants {
    static let navigationTitle = "Поиск"
    static let placeholderTextField = "Ваша Медиатека"
    static let imageSearch = "magnifyingglass"
    static let sectionHeader = "Поиск по категориям"
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
