//
//  Creator.swift
//  Travel Discovery
//
//  Created by Nitin Aggarwal on 23/12/22.
//

import Foundation

struct Creator: Identifiable {
    let id = UUID()
    let name, imageName: String
}

let creators: [Creator] = [
    .init(name: "Sara Martin", imageName: "image-1"),
    .init(name: "Galio Vox", imageName: "image-2"),
    .init(name: "Hina Sarrah", imageName: "image-3"),
    .init(name: "John Hands", imageName: "image-4"),
    .init(name: "Robert Alex", imageName: "image-5"),
    .init(name: "Amal Martin", imageName: "image-12"),
    .init(name: "Billy Childs", imageName: "image-14"),
]
