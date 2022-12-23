//
//  HomeView.swift
//  Travel Discovery
//
//  Created by Nitin Aggarwal on 22/12/22.
//

import SwiftUI

struct HomeView: View {
    
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
