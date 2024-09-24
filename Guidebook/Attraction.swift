//
//  Attraction.swift
//  Guidebook
//
//  Created by Johnny Proano on 9/22/24.
//

import Foundation

struct Attraction: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
}
