//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Furkan İSLAM on 14.06.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                List {
                    ForEach(myFavorites) {
                        favorite in Section(header: Text(favorite.title)) {
                            ForEach(favorite.elements) {
                                element in
                                NavigationLink(destination: DetailsView(chosenFavoriteElement: element)) {
                                    Text(element.name)
                                }
                            }
                        }
                    }
                }.navigationTitle("Favorite Book")
            }
            
        }
    }
}
#Preview {
    ContentView()
}
