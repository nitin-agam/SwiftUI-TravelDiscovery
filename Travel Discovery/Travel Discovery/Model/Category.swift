//
//  Category.swift
//  Travel Discovery
//
//  Created by Nitin Aggarwal on 23/12/22.
//

import Foundation

struct Category: Identifiable {
    let id = UUID()
    let name, imageName: String
}

let categories: [Category] = [
    .init(name: "Art", imageName: "paintpalette.fill"),
    .init(name: "Sport", imageName: "sportscourt.fill"),
    .init(name: "Live Events", imageName: "music.mic"),
    .init(name: "Food", imageName: "fork.knife.circle.fill"),
    .init(name: "History", imageName: "music.mic")
]
