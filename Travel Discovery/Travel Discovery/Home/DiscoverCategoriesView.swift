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
                            .foregroundColor(Color("ColorOrangeLight"))
                            .frame(width: 60, height: 60)
                            .background(Color.white)
                            .cornerRadius(.infinity)
                        
                        Text(category.name)
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .medium))
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
