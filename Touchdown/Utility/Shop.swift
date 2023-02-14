//
//  Shop.swift
//  Touchdown
//
//  Created by Rafael Carvalho on 14/02/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
