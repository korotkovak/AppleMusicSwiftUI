//
//  RadioPlaylistGrid.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 05/04/23.
//

import SwiftUI

struct RadioPlaylistView: View {
    
    @ObservedObject var radioViewModel = RadioViewModel()
    
    let rows = [
        GridItem(.flexible())
    ]
    
    var body: some View {
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
    }
}

struct RadioPlaylistGrid_Previews: PreviewProvider {
    static var previews: some View {
        RadioPlaylistView()
    }
}
