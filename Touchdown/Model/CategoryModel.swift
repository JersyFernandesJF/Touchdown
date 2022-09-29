//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Jersy Fernandes on 06/09/2022.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
