//
//  Destination.swift
//  Travel Discovery
//
//  Created by Nitin Aggarwal on 23/12/22.
//

import Foundation

struct Destination: Identifiable {
    let id = UUID()
    let name, country, imageName: String
}

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
