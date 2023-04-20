//
//  SearchTextField.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 19/04/23.
//

import SwiftUI

struct SearchTextField: View {

    @Binding var searchText: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack {
            ZStack {
                TextField(
                    isEditing ?
                    Constants.placeholderArtists : Constants.placeholderMedia,
                    text: $searchText
                )
                .padding(10)
                .padding(.horizontal, 30)
                .background(Colors.gray)
                .font(.system(size: 14))
                .cornerRadius(10)
                .padding(.horizontal, 20)
                .overlay {
                    HStack {
                        Image(systemName: Images.iconSearch)
                            .foregroundColor(Colors.grayForText)
                            .frame(
                                minWidth: 20,
                                maxWidth: .infinity,
                                alignment: .leading
                            )
                            .padding(.leading, 34)
                    }
                }

                if isEditing {
                    HStack {
                        Spacer()
                        Button{
                            searchText = ""
                        } label: {
                            Image(systemName: Images.iconClear)
                                .foregroundColor(Colors.red)
                        }
                        .padding(.trailing, 30)
                    }
                }
            }
        }
    }
}

fileprivate enum Constants {
    static let placeholderArtists = "Артисты, песни, тексты и др."
    static let placeholderMedia = "Ваша Медиатека"
}

fileprivate enum Images {
    static let iconSearch = "magnifyingglass"
    static let iconClear = "xmark.circle.fill"
}
