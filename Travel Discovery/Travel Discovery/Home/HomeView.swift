//
//  HomeView.swift
//  Travel Discovery
//
//  Created by Nitin Aggarwal on 22/12/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var searchText = ""
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [
            .foregroundColor: UIColor.white
        ]
    }
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color("ColorOrangeLight"), Color("ColorOrangeDark")]),
                               startPoint: .top,
                               endPoint: .center)
                    .ignoresSafeArea()
                
                Color(.init(white: 0.95, alpha: 1))
                    .offset(y: 400)
                
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    SearchBar(searchText: $searchText)
                    
                    // MARK: - Discover Categories View
                    DiscoverCategoriesView()
                    
                    VStack {
                        // MARK: - Popular Destinations View
                        PopularDestinationsView()
                        
                        // MARK: - Popular Places View
                        PopularPlacesView()
                        
                        // MARK: - Trending Creators View
                        TrendingCreatorsView()
                    }
                    .background(Color(.init(white: 0.95, alpha: 1)))
                    .cornerRadius(16)
                    .padding(.top, 32)
                }
                //.searchable(text: $searchText, placement: .automatic)
            }
            .navigationTitle("Discover")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct SearchBar: View {
    
    @Binding var searchText: String
    
    var body: some View {
        ZStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color.white.opacity(0.7))
                
                TextField("", text: $searchText)
                    .placeholder(when: searchText.isEmpty) {
                        Text("Discover destinations..").foregroundColor(Color.white.opacity(0.7))
                    }
                    .foregroundColor(.white)
            }
            .font(.system(size: 17, weight: .medium))
        }
        .padding()
        .background(Color.white.opacity(0.3))
        .cornerRadius(10)
        .padding(16)
    }
}
