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

struct DiscoverCategoriesView: View {
    
    let categories: [Category] = [
        .init(name: "Art", imageName: "paintpalette.fill"),
        .init(name: "Sport", imageName: "sportscourt.fill"),
        .init(name: "Live Events", imageName: "music.mic"),
        .init(name: "Food", imageName: "fork.knife.circle.fill"),
        .init(name: "History", imageName: "music.mic")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 14) {
                ForEach(categories) { category in
                    VStack(spacing: 8) {
                        Image(systemName: category.imageName)
                            .font(.system(size: 25))
                            .foregroundColor(.white)
                            .frame(width: 60, height: 60)
                            .background(Color.gray)
                            .cornerRadius(.infinity)
                            .shadow(color: .gray, radius: 3, x: 0, y: 2)
                        
                        Text(category.name)
                            .font(.system(size: 13, weight: .medium))
                            .multilineTextAlignment(.center)
                    }
                    .frame(width: 72)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct PopularDestinationsView: View {
    
    var body: some View {
        VStack {
            HStack {
                Text("Popular destinations")
                    .font(.system(size: 17, weight: .semibold))
                
                Spacer()
                
                Text("See all")
                    .font(.system(size: 13, weight: .medium))
            }
            .padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(0..<15) { _ in
                        Spacer()
                            .frame(width: 125, height: 150)
                            .background(Color.gray)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 0, y: 2)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct PopularPlacesView: View {
    
    var body: some View {
        VStack {
            HStack {
                Text("Popular places to eat")
                    .font(.system(size: 17, weight: .semibold))
                
                Spacer()
                
                Text("See all")
                    .font(.system(size: 13, weight: .medium))
            }
            .padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(0..<15) { _ in
                        Spacer()
                            .frame(width: 200, height: 64)
                            .background(Color.gray)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 3, x: 0, y: 2)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct TrendingCreatorsView: View {
    
    var body: some View {
        VStack {
            HStack {
                Text("Trending creators")
                    .font(.system(size: 17, weight: .semibold))
                
                Spacer()
                
                Text("See all")
                    .font(.system(size: 13, weight: .medium))
            }
            .padding(.horizontal)
            .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(0..<15) { _ in
                        Spacer()
                            .frame(width: 50, height: 50)
                            .background(Color.gray)
                            .cornerRadius(.infinity)
                            .shadow(color: .gray, radius: 3, x: 0, y: 2)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
