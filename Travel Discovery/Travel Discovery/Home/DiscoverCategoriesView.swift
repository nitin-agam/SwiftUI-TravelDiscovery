//
//  DiscoverCategoriesView.swift
//  Travel Discovery
//
//  Created by Nitin Aggarwal on 23/12/22.
//

import SwiftUI

struct DiscoverCategoriesView: View {

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

struct DiscoverCategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverCategoriesView()
    }
}
