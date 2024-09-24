//
//  City.swift
//  Guidebook
//
//  Created by Johnny Proano on 9/22/24.
//

import Foundation

struct City: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var summary: String
    var imageName: String
    
    var attractions: [Attraction]
}
