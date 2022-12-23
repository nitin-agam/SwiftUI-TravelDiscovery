//
//  TrendingCreatorsView.swift
//  Travel Discovery
//
//  Created by Nitin Aggarwal on 23/12/22.
//

import SwiftUI

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
                HStack(alignment: .top, spacing: 12) {
                    ForEach(creators) { creator in
                        CreatorView(creator: creator)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct CreatorView: View {
    
    let creator: Creator
    
    var body: some View {
        VStack(spacing: 10) {
            Image(creator.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .cornerRadius(.infinity)
                .shadow(color: .gray, radius: 2, x: 0, y: 2)
            
            Text(creator.name)
                .font(.system(size: 14, weight: .semibold))
                .multilineTextAlignment(.center)
        }
        .frame(width: 60)
        .padding(.bottom)
    }
}

struct TrendingCreatorsView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingCreatorsView()
            .previewLayout(.sizeThatFits)
    }
}
