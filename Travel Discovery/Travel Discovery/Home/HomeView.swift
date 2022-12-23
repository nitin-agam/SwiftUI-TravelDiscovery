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
    
    let destinations: [Destination] = [
        Destination(name: "Bagan", country: "Myanmar", imageName: "Bagan, Myanmar"),
        Destination(name: "Banff Park", country: "Canada", imageName: "Banff National Park, Canada"),
        Destination(name: "Bora Bora", country: "France", imageName: "Bora Bora, French Polynesia"),
        Destination(name: "Forbid City", country: "China", imageName: "Forbidden City, Beijing, China"),
        Destination(name: "Great Ocean", country: "Australia", imageName: "Great Ocean Road, Australia"),
        Destination(name: "Cherry Blossom", country: "Japan", imageName: "Japan in Cherry Blossom Season"),
        Destination(name: "Pamukkale", country: "Turkey", imageName: "Pamukkale, Turkey"),
        Destination(name: "Venice", country: "Italy", imageName: "Venice, Italy"),
        Destination(name: "Danxia Geopark", country: "China", imageName: "Zhangye Danxia Geopark, China")
    ]
    
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
                    ForEach(destinations) { destination in
                        
                        ZStack() {
                            Image(destination.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 180)
                            
                            Rectangle()
                                .fill(
                                    .linearGradient(Gradient(colors: [
                                        Color.black.opacity(0),
                                        Color.black.opacity(0),
                                        Color.black.opacity(0),
                                        Color.black.opacity(0),
                                        Color.black.opacity(0.4),
                                        Color.black.opacity(0.6)
                                    ]), startPoint: .top, endPoint: .bottom)
                                )
                            
                            VStack(alignment: .leading, spacing: 2) {
                                
                                HStack {
                                    Spacer()
                                }

                                Spacer()
                                
                                Text(destination.name)
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .semibold))
                                    .padding(.top)
                                Text(destination.country)
                                    .foregroundColor(.white.opacity(0.8))
                                    .font(.system(size: 14, weight: .medium))
                            }
                            .frame(width: 132)
                            .padding(.bottom, 6)
                        }
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
