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

struct TrendingCreatorsView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingCreatorsView()
    }
}
