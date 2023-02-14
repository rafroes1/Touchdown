//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Rafael Carvalho on 14/02/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
