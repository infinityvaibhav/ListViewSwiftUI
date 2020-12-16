//
//  Hike.swift
//  PopulateListView
//
//  Created by Vaibhav Upadhyay on 13/12/20.
//

import Foundation

struct Hike {
    let name: String
    let imageURL: String
    let miles: Double
}

extension Hike {
    
    static func all() -> [Hike] {
        
        return [
            Hike(name: "Salmonberry Trial", imageURL: "selfie", miles: 6),
            Hike(name: "Tom, Dick and Harry Mountain", imageURL: "passport", miles: 5.8),
            Hike(name: "Tamanawas Falls", imageURL: "cartoon", miles: 5)
        ]
    }
}