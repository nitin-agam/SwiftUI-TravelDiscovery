//
//  PopularDestinationsView.swift
//  Travel Discovery
//
//  Created by Nitin Aggarwal on 23/12/22.
//

import SwiftUI

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
                        .background(Color.white)
                        .cornerRadius(10)
                        .shadow(color: Color(.sRGB, white: 0.8, opacity: 0.2), radius: 4, x: 0, y: 2)
                        .padding(.bottom)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

struct PopularDestinationsView_Previews: PreviewProvider {
    static var previews: some View {
        PopularDestinationsView()
            .previewLayout(.fixed(width: 400, height: 270))
    }
}
