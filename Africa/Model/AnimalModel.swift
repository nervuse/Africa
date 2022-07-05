//
//  AnimalModel.swift
//  Africa
//
//  Created by elena on 29.06.2022.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id: String
    let name: String
    let inflectedName: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
