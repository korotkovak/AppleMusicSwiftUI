//
//  RadioStationsGrid.swift
//  AppleMusicSwiftUI
//
//  Created by Kristina Korotkova on 05/04/23.
//

import SwiftUI

struct RadioStationsView: View {
    
    @ObservedObject var radioViewModel = RadioViewModel()

    let columns = [
        GridItem(.flexible())
    ]

    var body: some View {
        LazyVGrid(columns: columns, alignment: .leading) {
            ForEach(radioViewModel.radioStationsData) { radioModel in
                HStack(spacing: 20) {
                    Image(radioModel.image)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .cornerRadius(5)
                    VStack(alignment: .leading) {
                        Text(radioModel.title)
                            .font(.title3)
                        Text(radioModel.description)
                            .font(.callout)
                            .foregroundColor(Colors.grayForText)
                            .lineLimit(0)
                    }
                }
                Divider()
            }
            .padding(.horizontal, 20)
        }
    }
}

struct RadioStationsGrid_Previews: PreviewProvider {
    static var previews: some View {
        RadioStationsView()
    }
}
