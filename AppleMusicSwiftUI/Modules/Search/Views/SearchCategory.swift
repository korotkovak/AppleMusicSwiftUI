//
//  SearchCategory.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 19/04/23.
//

import SwiftUI

struct SearchCategory: View {
    
    @ObservedObject var viewModel = SearchViewModel()

    private let columns = [
        GridItem(.flexible(), spacing: 14),
        GridItem(.flexible(), spacing: 14)
    ]

    var body: some View {
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
        .padding(.bottom, 70)
    }
}

fileprivate enum Constants {
    static let sectionHeader = "Поиск по категориям"
}


struct SearchCategory_Previews: PreviewProvider {
    static var previews: some View {
        SearchCategory()
    }
}
