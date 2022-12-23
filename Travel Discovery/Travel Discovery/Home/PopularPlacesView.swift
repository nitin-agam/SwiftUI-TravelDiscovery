//
//  PopularPlacesView.swift
//  Travel Discovery
//
//  Created by Nitin Aggarwal on 23/12/22.
//

import SwiftUI

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
                    ForEach(restuarants) { restuarant in
                        PlaceView(restuarant: restuarant)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct PlaceView: View {
    
    let restuarant: Restuarant
    
    var body: some View {
        HStack(spacing: 12) {
            Image(restuarant.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 65, height: 65)
                .clipped()

            VStack(alignment: .leading, spacing: 3) {
                Text(restuarant.name)
                    .font(.system(size: 15, weight: .semibold))

                Text(restuarant.location)
                    .font(.system(size: 13))

                HStack(spacing: 5) {
                    Image(systemName: "star.fill")
                        .font(.system(size: 10))
                    Text("\(restuarant.rating) • \(restuarant.type) • \(restuarant.price)")
                        .font(.system(size: 13))
                }
            }
            .padding(.trailing, 10)
        }
        .background(Color.white.opacity(0.7))
        .cornerRadius(10)
        .shadow(color: .gray, radius: 3, x: 0, y: 2)
    }
}

struct PopularPlacesView_Previews: PreviewProvider {
    static var previews: some View {
        PopularPlacesView()
            .previewLayout(.sizeThatFits)
    }
}
