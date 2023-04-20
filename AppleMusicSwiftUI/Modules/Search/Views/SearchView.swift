//
//  SearchView.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 15/04/23.
//

import SwiftUI

struct SearchView: View {
    
    @State private var selectedSide = 0
    @State private var searchText = ""
    @State private var isEditing = false
    
    var body: some View {
        NavigationView {
            VStack {
                if !isEditing {
                    HStack {
                        Text(Constants.navigationTitle)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.leading, 20)
                        Spacer()
                    }
                }
                
                HStack {
                    SearchTextField(
                        searchText: $searchText,
                        isEditing: $isEditing
                    )
                    .onTapGesture {
                        if !isEditing {
                            isEditing.toggle()
                        }
                    }
                    
                    if isEditing {
                        Spacer(minLength: 5)
                        Button {
                            isEditing.toggle()
                            searchText = ""
                        } label: {
                            Text(Constants.cancelButton)
                                .foregroundColor(Colors.red)
                        }
                        .padding(.trailing, 20)
                    }
                }
                
                if isEditing {
                    VStack {
                        SearchBar(selectedSide: $selectedSide)
                        Spacer(minLength: 30)
                        
                        if selectedSide == 0 {
                            if !searchText.isEmpty {
                                SearchAlbumAndTrack(searchText: $searchText)
                            }
                        } else if selectedSide == 1 {
                            VStack {
                                Spacer(minLength: 0)
                                PlugView(
                                    title: Constants.textPlug
                                )
                                Spacer(minLength: 0)
                            }
                        }
                    }
                    .padding(.horizontal)
                } else {
                    SearchCategory()
                }
            }
            .navigationBarHidden(true)
        }
    }
}

fileprivate enum Constants {
    static let navigationTitle = "Поиск"
    static let searchPlaceholderMedia = "Ваша Медиатека"
    static let cancelButton = "Отменить"
    static let textPlug = "Страница в разработке"
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
