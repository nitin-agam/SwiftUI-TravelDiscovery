//
//  HomeView.swift
//  Travel Discovery
//
//  Created by Nitin Aggarwal on 22/12/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // MARK: - Discover Categories View
                DiscoverCategoriesView()
                
                // MARK: - Popular Destinations View
                PopularDestinationsView()
                
                // MARK: - Popular Places View
                PopularPlacesView()
                
                // MARK: - Trending Creators View
                TrendingCreatorsView()
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
