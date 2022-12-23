//
//  Restuarant.swift
//  Travel Discovery
//
//  Created by Nitin Aggarwal on 23/12/22.
//

import Foundation

struct Restuarant: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let rating: String
    let type: String
    let price: String
    let location: String
}

let restuarants: [Restuarant] = [
    .init(name: "Central Lima", imageName: "Central", rating: "4.7", type: "Squid", price: "$$$", location: "South America"),
    .init(name: "Diverxo Madrid", imageName: "Diverxo", rating: "4.1", type: "Mochi", price: "$$$", location: "Madrid, Spain"),
    .init(name: "Pujol Mexico", imageName: "Pujol", rating: "3.9", type: "Tacos", price: "$$", location: "North America"),
    .init(name: "The Chairman", imageName: "Chairman", rating: "3.8", type: "Cantonese", price: "$$", location: "Hong Kong")
]
