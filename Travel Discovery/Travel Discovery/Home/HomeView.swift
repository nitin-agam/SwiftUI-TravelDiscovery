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
                
            }
            .navigationTitle("Discover")
        }
    }
}

struct DiscoverCategoriesView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                ForEach(0..<15) { _ in
                    VStack(spacing: 8) {
                        Spacer()
                            .frame(width: 60, height: 60)
                            .background(Color.gray)
                            .cornerRadius(.infinity)
                            .shadow(color: .gray, radius: 5, x: 0, y: 2)
                        
                        Text("Category")
                            .font(.system(size: 15, weight: .medium))
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
